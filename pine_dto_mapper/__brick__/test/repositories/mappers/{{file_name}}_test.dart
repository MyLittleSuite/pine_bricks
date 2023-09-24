import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/models/{{model_file_name}}/{{model_file_name}}.dart';
import 'package:{{package_name}}/repositories/mappers/{{file_name}}.dart';
import '{{{dto_full_path}}}';
import '{{{dto_fixture_full_path}}}';

void main() {
  late {{name}} mapper;
  late {{dto_full_name}} dto;
  late {{model_name}} model;

  setUp(() {
    dto = {{dto_full_name}}Fixture.factory().makeSingle();

    model = {{model_name}}();
    mapper = const {{name}}();
  });

  test('mapping {{model_name}} object from {{dto_full_name}}', () {
    expect(mapper.fromDTO(dto), equals(model));
  });

  test('mapping {{model_name}} to {{dto_full_name}}', () {
    expect(mapper.toDTO(model), equals(dto));
  });
}
