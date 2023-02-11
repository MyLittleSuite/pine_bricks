import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/models/{{model_file_name}}.dart';
import 'package:{{package_name}}/repositories/mappers/{{file_name}}.dart';
import 'package:{{package_name}}{{dto_path}}';

import '../../fixtures/{{type}}/{{dto_file_name}}_fixture_factory.dart';

void main() {
  late {{name}} mapper;
  late {{dto_name}} dto;
  late {{model_name}} model;

  setUp(() {
    dto = {{dto_name}}Fixture.factory().makeSingle();

    model = {{model_name}}();
    mapper = {{name}}();
  });

  test('mapping {{model_name}} object from {{dto_name}}', () {
    expect(mapper.fromDTO(dto), equals(model));
  });

  test('mapping {{model_name}} to {{dto_name}}', () {
    expect(mapper.toDTO(model), equals(dto));
  });
}
