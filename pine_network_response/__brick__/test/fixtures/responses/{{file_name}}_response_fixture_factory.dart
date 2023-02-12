import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:{{package_name}}/services/network/responses/{{file_name}}/{{file_name}}_response.dart';

extension {{name}}ResponseFixture on {{name}}Response {
  static {{name}}ResponseFixtureFactory factory() => {{name}}ResponseFixtureFactory();
}

class {{name}}ResponseFixtureFactory extends JsonFixtureFactory<{{name}}Response> {
  @override
  FixtureDefinition<{{name}}Response> definition() => define(
        (faker) => const {{name}}Response(),
  );

  @override
  JsonFixtureDefinition<{{name}}Response> jsonDefinition() => defineJson(
      (object) => {},
  );
}
