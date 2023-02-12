import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:{{package_name}}/services/network/jto/{{file_name}}/{{file_name}}_jto.dart';

extension {{name}}JTOFixture on {{name}}JTO {
  static {{name}}JTOFixtureFactory factory() => {{name}}JTOFixtureFactory();
}

class {{name}}JTOFixtureFactory extends JsonFixtureFactory<{{name}}JTO> {
  @override
  FixtureDefinition<{{name}}JTO> definition() => define(
        (faker) => const {{name}}JTO(),
  );

  @override
  JsonFixtureDefinition<{{name}}JTO> jsonDefinition() => defineJson(
      (object) => {},
  );
}
