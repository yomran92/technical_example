import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:requests_inspector/requests_inspector.dart';


import '../../../../../injection_container.dart';
import '../../../constants.dart';
import '../../../exceptions/app_exceptions.dart';
import '../../../routing/logger.dart';
import '../models/params/params_model.dart';

abstract class RemoteDataSource {
  final baseUrl = "AppConfigurations.BaseUrl";
  static final dio = Dio(
    BaseOptions(
      receiveTimeout: Duration(seconds: 50), // 50 seconds
      connectTimeout: Duration(seconds: 50),
      sendTimeout: Duration(minutes: 3,),

    ),
  )..interceptors.addAll([RequestsInspectorInterceptor()]);

  Map<String, String> headers = {};
  Map<String, String> headersRefresh = {};
  static CancelToken _cancelToken = CancelToken();

  RemoteDataSource() {
   }

  void initTokenAndHeaders(Map headers) {
    // other headers
    this.headers.forEach((key, value) {
      headers.update(
        key,
        (oval) => value,
        ifAbsent: () => value,
      );
    });

    if (kDebugMode) {
      print(this.headers);
    }
  }

  checkConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      throw NoInternetException();
    }
  }



  Future<Map<String, dynamic>> get(ParamsModel model) async {
    dynamic responseJson;
    // initTokenAndHeaders(headers);
     await checkConnectivity();
    final url = model.baseUrl ?? baseUrl;
    if (kDebugMode) {
      AppLogger.log('get request url:${url + model.url.toString()}');
      AppLogger.log('get request url params:${model.urlParams}');
    }
    final response = await dio.get(
      url + model.url.toString(),
      options: Options(
         responseType: ResponseType.plain,
      ),
      queryParameters: model.urlParams,
    );
    responseJson = _returnResponse(response);
    if (kDebugMode) {
      AppLogger.log('get response: $responseJson');
    }
    return responseJson;
  }


  _returnResponse(Response response) {
    final responseJson =
        response.toString().isEmpty ? null : json.decode(response.toString());

    switch (response.statusCode) {
      case 200:
      case 201:
        return responseJson;
      case 400:
        if (responseJson['error']['message'] == 'Invalid refresh token.') {
          throw SessionTimedOutException();
        }
        List<MapEntry<String?, dynamic>>? validationErrors =
            (responseJson['error']['validationErrors']
                    as Map<String?, dynamic>?)
                ?.entries
                .toList();
        if (validationErrors != null && validationErrors.isNotEmpty) {
          var error = validationErrors.firstOrNull;
          if (error != null && error.value is List) {
            var errors = error.value as List;
            throw InvalidInputException(
              message: errors.firstOrNull ?? '',
            );
          }
        }
        throw InvalidInputException(
          message: responseJson['error']['message'],
        );
      case 409:
        throw InvalidInputException(
          message: responseJson['error']['message'],
          //data: responseJson
        );

      case 401:
      case 403:
        throw UnauthorizedException(
          data: responseJson,
        );
      case 404:
        throw NotFoundException(data: responseJson);
      case 500:
        throw ServerErrorException(data: responseJson);
      default:
        throw FetchDataException(
          message:   response.data.toString(),
        );
    }
  }


  Future<Map<String, dynamic>> performRequest(ParamsModel model) async {
     Map<String, dynamic> response;
    try {
      if (kDebugMode) {
        AppLogger.log('api url::: ${model.url}');
      }
      switch (model.requestType!) {
        case RequestType.GET:
          response = await get(model);
          break;

        case RequestType.PUT:
          throw const NotImplementedException(message: "Request type: PUT");
        default:
          throw const NotImplementedException();
      }
      return (response);
    } on DioError catch (e) {
      if (kDebugMode) {
        AppLogger.log('api params::: ${model.body?.toJson()}');
        AppLogger.log('Dio error::: ${e.message}');
      }
      if (e.type is DioError && e.type is SocketException) {}
      if (e.response == null) {
        throw NoInternetException();
      } else {
        if (kDebugMode) {
          print(e.response);
        }
        return _returnResponse(e.response!);
      }
    } on Exception catch (e) {
      throw AppException(e, '$e');
    } finally {}
  }

 static cancelRequest(){
    _cancelToken.cancel();
    _cancelToken.whenCancel.whenComplete(() => _cancelToken = CancelToken());
  }
}
