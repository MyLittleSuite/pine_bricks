import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part '{{file_name}}.g.dart';

/// Abstract class of {{name}}Service
@RestApi()
abstract class {{name}}Service {
  factory {{name}}Service(Dio dio, {String baseUrl}) = _{{name}}Service;
}