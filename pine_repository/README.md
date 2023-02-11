# Pine Repository

A brick to create your repository class including tests.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists.

## How to use 🚀

```
mason make pine_repository --name "Authentication"
```

## Variables ✨

| Variable | Description                | Default | Type     |
|----------|----------------------------|---------|----------|
| `name`   | The name of the repository | Dash    | `string` |

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
}

/// Implementation of the base interface AuthenticationRepository
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  const AuthenticationRepositoryImpl();
}

```

### Test File

```dart
import 'package:{{package_name}}/repositories/authentication_repository.dart';

/// Test case for the class AuthenticationRepositoryImpl
void main() {
  late AuthenticationRepository repository;

  setUp(() {
    repository = AuthenticationRepositoryImpl();
  });
}
```
