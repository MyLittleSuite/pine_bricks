# Pine Model

A brick to create your network response class including fixtures.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists. Also, make sure you have previously set up your
project to work with the [data_fixture_dart](https://pub.dev/packages/data_fixture_dart)
and [freezed](https://pub.dev/packages/freezed) library.

## How to use 🚀

```
mason make pine_model --name "User"
```

## Variables ✨

| Variable | Description           | Default | Type     |
|----------|-----------------------|---------|----------|
| `name`   | The name of the model | Dash    | `string` |

## Outputs 📦

```
--name "User"
├── lib
│   └── models
│       └── user
│           └── user.dart
├── test
│   └── fixtures
│       └── models
│           └── user_fixture_factory.dart
└── ...
```

### Model File

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User() = _User;
}
```

### Factory File

```dart
import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:{{package_name}}/models/user/user.dart';

extension UserFixture on User {
  static UserFixtureFactory factory() => UserFixtureFactory();
}

class UserFixtureFactory extends FixtureFactory<User> {
  @override
  FixtureDefinition<User> definition() =>
      define(
            (faker) => const User(),
      );
}
```
