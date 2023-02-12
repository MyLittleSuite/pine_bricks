# Pine Retrofit

A brick to create your retrofit service class including tests.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists. Also, make sure you have previously set up your
project to work with the [Retrofit](https://pub.dev/packages/retrofit) and
the [http_mock_adapter](https://pub.dev/packages/http_mock_adapter) library.

## How to use 🚀

```
mason make pine_retrofit --name "Authentication"
```

## Variables ✨

| Variable | Description                      | Default | Type     |
|----------|----------------------------------|---------|----------|
| `name`   | The name of the retrofit service | Dash    | `string` |

## Outputs 📦

```
--name "Authentication"
├── lib
│   └── services
│       └── network
│           └── authentication_service
│               └── authentication_service.dart
├── test
│   └── services
│       └── network
│           └── authentication_service
│               └── authentication_service_test.dart
└── ...
```

### Service File

```dart
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'authentication_service.g.dart';

/// Abstract class of AuthenticationService
@RestApi()
abstract class AuthenticationService {
  factory AuthenticationService(Dio dio, {String baseUrl}) = _AuthenticationService;

  //TODO: Add your methods
}

```

### Test File

```dart
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:{{package_name}}/services/network/authentication/authentication_service.dart';

/// Test case for the class AuthenticationService
void main() {
  late Dio dio;
  late DioAdapter dioAdapter;

  late AuthenticationService service;

  setUp(() {
    dio = Dio(BaseOptions());
    dioAdapter = DioAdapter(dio: dio);

    service = AuthenticationService(dio);
  });

  //TODO: Test your methods
}
```
