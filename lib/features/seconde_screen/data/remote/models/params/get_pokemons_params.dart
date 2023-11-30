import '../../../../../../core/constants.dart';
import '../../../../../../core/feature/data/models/params/params_model.dart';

class GetPokemonsParams extends ParamsModel<GetPokemonsParamsBody> {
  GetPokemonsParams({GetPokemonsParamsBody? body})
      : super(
          body: body,
          baseUrl: AppConfigurations.BaseUrl,
        );

  @override
  Map<String, String> get additionalHeaders => {};

  @override
  RequestType? get requestType => RequestType.GET;

  @override
  bool get authorized => true;

  @override
  Map<String, String> get urlParams => {
        'offset': body!.offset.toString() ?? "0",
        'limit': '20',
      };

  @override
  List<Object?> get props => [url, urlParams, requestType, body];

  @override
  String? get url => 'pokemon/';
}

class GetPokemonsParamsBody extends BaseBodyModel {
  GetPokemonsParamsBody({
    this.offset = 0,
  });

  final int offset;

  @override
  Map<String, dynamic> toJson() => {'offset': offset, 'limit': 20};
}
