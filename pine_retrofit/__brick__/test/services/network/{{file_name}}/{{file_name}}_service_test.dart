import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:{{package_name}}/services/network/{{file_name}}/{{file_name}}_service.dart';

/// Test case for the class {{name}}Service
void main() {
  late Dio dio;
  late DioAdapter dioAdapter;

  late {{name}}Service service;

  setUp(() {
    dio = Dio(BaseOptions());
    dioAdapter = DioAdapter(dio: dio);

    service = {{name}}Service(dio);
  });

  //TODO: Test your methods
}