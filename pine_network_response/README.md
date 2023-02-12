# Pine Network Response

A brick to create your network response class including fixtures.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists. Also, make sure you have previously set up your
project to work with the [data_fixture_dart](https://pub.dev/packages/data_fixture_dart)
and [freezed](https://pub.dev/packages/freezed) library.

## How to use 🚀

```
mason make pine_network_response --name "SignIn"
```

## Variables ✨

| Variable | Description                      | Default | Type     |
|----------|----------------------------------|---------|----------|
| `name`   | The name of the network response | Dash    | `string` |

## Outputs 📦

```
--name "SignIn"
├── lib
│   └── services
│       └── network
│           └── responses
│               └── sign_in
│                   └── sign_in_response.dart
├── test
│   └── fixtures
│       └── responses
│           └── sign_in_response_fixture_factory.dart
└── ...
```

### Network Response File

```dart
import 'package:pine/pine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response.g.dart';

part 'sign_in_response.freezed.dart';

@freezed
class SignInResponse extends DTO with _$SignInResponse {
    const factory SignInResponse() = _SignInResponse;

    factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
}

```

### Factory File

```dart
import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:{{package_name}}/services/network/responses/sign_in/sign_in_response.dart';

extension SignInResponseFixture on SignInResponse {
  static SignInResponseFixtureFactory factory() => SignInResponseFixtureFactory();
}

class SignInResponseFixtureFactory extends JsonFixtureFactory<SignInResponse> {
  @override
  FixtureDefinition<SignInResponse> definition() => define(
    (faker) => const SignInResponse(),
  );

  @override
  JsonFixtureDefinition<SignInResponse> jsonDefinition() => defineJson(
    (object) => {},
  );
}
```
