import '../../../domain/entities/entity.dart';

abstract class ResponseModel {
  fromJson(Map<String, dynamic> json);
  Entity toEntity();
}
