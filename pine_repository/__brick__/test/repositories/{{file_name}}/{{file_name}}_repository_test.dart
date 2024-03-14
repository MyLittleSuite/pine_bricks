import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/repositories/{{file_name}}_repository.dart';

/// Test case for the class {{name}}RepositoryImpl
void main() {
  late {{name}}Repository repository;

  setUp(() {
    repository = const {{name}}RepositoryImpl();
  });

  {{#functions}}
  /// Testing the method [{{method_name}}]
  group('when the method {{method_name}} is called', () {

  });

  {{/functions}}
}