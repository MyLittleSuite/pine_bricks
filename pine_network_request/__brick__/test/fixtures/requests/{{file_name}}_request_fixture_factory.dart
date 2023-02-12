import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:{{package_name}}/services/network/requests/{{file_name}}/{{file_name}}_request.dart';

extension {{name}}RequestFixture on {{name}}Request {
  static {{name}}RequestFixtureFactory factory() => {{name}}RequestFixtureFactory();
}

class {{name}}RequestFixtureFactory extends JsonFixtureFactory<{{name}}Request> {
  @override
  FixtureDefinition<{{name}}Request> definition() => define(
        (faker) => const {{name}}Request(),
  );

  @override
  JsonFixtureDefinition<{{name}}Request> jsonDefinition() => defineJson(
      (object) => {},
  );
}
