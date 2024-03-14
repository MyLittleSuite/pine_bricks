import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
{{#context}}import 'package:flutter/material.dart';
import 'package:provider/provider.dart';{{/context}}

part '{{file_name}}_service.g.dart';

/// Abstract class of {{name}}Service
@RestApi()
abstract class {{name}}Service {
  factory {{name}}Service(Dio dio, {String baseUrl}) = _{{name}}Service;

  //TODO: Add your methods
}

{{#context}}extension {{name}}ServiceExtension on BuildContext {
  /// Extension method used to get the [{{name}}Service] instance
  {{name}}Service get {{name.camelCase()}}Repository => read<{{name}}Service>();
}{{/context}}