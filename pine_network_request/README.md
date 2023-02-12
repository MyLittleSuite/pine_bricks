# Pine Network Request

A brick to create your network request class including fixtures.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists. Also, make sure you have previously set up your
project to work with the [data_fixture_dart](https://pub.dev/packages/data_fixture_dart)
and [freezed](https://pub.dev/packages/freezed) library.

## How to use 🚀

```
mason make pine_network_request --name "SignIn"
```

## Variables ✨

| Variable | Description                     | Default | Type     |
|----------|---------------------------------|---------|----------|
| `name`   | The name of the network request | Dash    | `string` |

## Outputs 📦

```
--name "SignIn"
├── lib
│   └── services
│       └── network
│           └── requests
│               └── sign_in
│                   └── sign_in_request.dart
├── test
│   └── fixtures
│       └── requests
│           └── sign_in_request_fixture_factory.dart
└── ...
```

### Network Request File

```dart
import 'package:pine/pine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_request.g.dart';

part 'sign_in_request.freezed.dart';

@freezed
class SignInRequest extends DTO with _$SignInRequest {
  const factory SignInRequest() = _SignInRequest;

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);
}

```

### Factory File

```dart
import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:{{package_name}}/services/network/requests/sign_in/sign_in_request.dart';

extension SignInRequestFixture on SignInRequest {
  static SignInRequestFixtureFactory factory() => SignInRequestFixtureFactory();
}

class SignInRequestFixtureFactory extends JsonFixtureFactory<SignInRequest> {
  @override
  FixtureDefinition<SignInRequest> definition() =>
      define(
            (faker) => const SignInRequest(),
      );

  @override
  JsonFixtureDefinition<SignInRequest> jsonDefinition() =>
      defineJson(
            (object) => {},
      );
}
```
