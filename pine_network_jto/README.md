# Pine Network JTO

A brick to create your JSON Transfer Object (JTO) class including fixtures.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists. Also, make sure you have previously set up your
project to work with the [data_fixture_dart](https://pub.dev/packages/data_fixture_dart)
and [freezed](https://pub.dev/packages/freezed) library.

## How to use 🚀

```
mason make pine_network_jto --name "User"
```

## Variables ✨

| Variable | Description         | Default | Type     |
|----------|---------------------|---------|----------|
| `name`   | The name of the JTO | Dash    | `string` |

## Outputs 📦

```
--name "User"
├── lib
│   └── services
│       └── network
│           └── jto
│               └── user
│                   └── user_jto.dart
├── test
│   └── fixtures
│       └── jto
│           └── user_jto_fixture_factory.dart
└── ...
```

### JTO File

```dart
import 'package:pine/pine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_jto.g.dart';

part 'user_jto.freezed.dart';

@freezed
class UserJTO extends DTO with _$UserJTO {
  const factory UserJTO() = _UserJTO;

  factory UserJTO.fromJson(Map<String, dynamic> json) =>
      _$UserJTOFromJson(json);
}

```

### Factory File

```dart
import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:{{package_name}}/services/network/jto/user/user_jto.dart';

extension UserJTOFixture on UserJTO {
  static UserJTOFixtureFactory factory() => UserJTOFixtureFactory();
}

class UserJTOFixtureFactory extends JsonFixtureFactory<UserJTO> {
  @override
  FixtureDefinition<UserJTO> definition() =>
      define(
            (faker) => const UserJTO(),
      );

  @override
  JsonFixtureDefinition<UserJTO> jsonDefinition() =>
      defineJson(
            (object) => {},
      );
}
```
