# Pine Service

A brick to create your service class including tests.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists.

## How to use 🚀

```
mason make pine_service --name "Authentication"
```

## Variables ✨

| Variable | Description             | Default | Type     |
|----------|-------------------------|---------|----------|
| `name`   | The name of the service | Dash    | `string` |

## Outputs 📦

```
--name "Authentication"
├── lib
│   └── services
│       └── authentication_service.dart
├── test
│   └── services
│       └── authentication
│           └── authentication_service_test.dart
└── ...
```

### Service File

```dart
/// Abstract class of AuthenticationService
abstract class AuthenticationService {
  //TODO: Add your methods
}

/// Implementation of the base interface AuthenticationService
class AuthenticationServiceImpl implements AuthenticationService {
  const AuthenticationServiceImpl();
}

```

### Test File

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/services/authentication_service.dart';

/// Test case for the class AuthenticationServiceImpl
void main() {
  late AuthenticationService service;

  setUp(() {
    service = const AuthenticationServiceImpl();
  });

  //TODO: Test your methods
}
```
