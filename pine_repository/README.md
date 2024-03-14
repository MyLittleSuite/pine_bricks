# Pine Repository

A brick to create your repository class including tests.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists.

## How to use 🚀

```
mason make pine_repository --name "Authentication" --methods "perform"
```

## Variables ✨

| Variable | Description                               | Default | Type    |
|----------|-------------------------------------------|---------|---------|
| `name`   | The name of the repository                | Dash    | `string` |
| `context` | Generate repository extension on context  | true    | `boolean`  |
| `methods` | The list of the methods (comma separated) | action  | `string` |

## Outputs 📦

```
--name "Authentication"
├── lib
│   └── repositories
│       └── authentication_repository.dart
├── test
│   └── repositories
│       └── authentication_repository
│           └── authentication_repository_test.dart
└── ...
```

### Repository File

```dart
/// Abstract class of AuthenticationRepository
abstract class AuthenticationRepository {
  void perform();
}

/// Implementation of the base interface AuthenticationRepository
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  const AuthenticationRepositoryImpl();

  @override
  void perform() {

  }
}

extension AuthenticationRepositoryExtension on BuildContext {
  /// Extension method used to get the [AuthenticationRepository] instance
  AuthenticationRepository get signInCubit => read<AuthenticationRepository>();
}
```

### Test File

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/repositories/authentication_repository.dart';

/// Test case for the class AuthenticationRepositoryImpl
void main() {
  late AuthenticationRepository repository;

  setUp(() {
    repository = const AuthenticationRepositoryImpl();
  });

  /// Testing the method [perform]
  group('when the method perform is called', () {

  });
}
```
