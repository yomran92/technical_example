 import '../../../exceptions/app_exceptions.dart';
import 'base_response.dart';

class ErrorEntity extends BaseEntity {
  ErrorEntity(
      {this.code,
      required this.errorMessage,
      this.details,
      this.validationErrors});

  factory ErrorEntity.fromJson(Map<String, dynamic> parsedJson) {
    if (parsedJson['error_description'] != null) {
      var error = parsedJson['error_description'];
      var res = ErrorEntity(errorMessage: error);
      if (error is List && error.isNotEmpty) {
        for (int i = 0; i < error.length; i++) {
          res.validationErrors?.add(error[i]);
        }
      }
      return ErrorEntity(errorMessage: error);
    }
    return ErrorEntity(errorMessage: 'Unknown Error');
  }

  factory ErrorEntity.fromAppException(AppException exception) {
    return ErrorEntity(errorMessage: exception.message);
    // errorMessage = exception.message;
  }
  factory ErrorEntity.fromException(Exception exception) {
    return ErrorEntity(errorMessage: exception.toString());
    // errorMessage = exception.message;
  }

  int? code;
  String errorMessage;
  String? details;
  List<String>? validationErrors = [];

  @override
  fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}
