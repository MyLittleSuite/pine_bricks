import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/services/{{file_name}}_service.dart';

/// Test case for the class {{name}}ServiceImpl
void main() {
  late {{name}}Service service;

  setUp(() {
    service = const {{name}}ServiceImpl();
  });

  {{#functions}}
  /// Testing the method [{{method_name}}]
  group('when the method {{method_name}} is called', () {

  });

  {{/functions}}
}