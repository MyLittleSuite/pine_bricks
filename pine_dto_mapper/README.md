# Pine DTO Mapper

A brick to create your DTO Mapper class including tests.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists. 

## How to use 🚀

```
mason make pine_dto_mapper --name "UserMapper" --model_name "User" --dto_name "User" --type "jto"
```

## Variables ✨

| Variable     | Description                                          | Default | Type     |
|--------------|------------------------------------------------------|---------|----------|
| `name`       | The name of the Mapper                               | Dash    | `string` |
| `model_name` | The name of the Model                                | Dash    | `string` |
| `dto_name`   | The name of the DTO (without suffix)                 | Dash    | `string` |
| `type`       | The type of the DTO (`request`, `response` or `jto`) | jto     | `string` |

## Outputs 📦

```
--name "UserMapper" --model_name "User" --dto_name "UserJTO" --type "jto"
├── lib
│   └── repositories
│       └── mappers
│           └── user_mapper.dart
├── test
│   └── repositories
│       └── mappers
│           └── user_mapper_test.dart
└── ...
```

### DTO Mapper File

```dart
import 'package:pine/pine.dart';
import 'package:{{package_name}}/models/user/user.dart';
import 'package:{{package_name}}/services/network/jto/user/user_jto.dart';

class UserMapper extends DTOMapper<UserJTO, User> {
  @override
  User fromDTO(UserJTO dto) => User();

  @override
  UserJTO toDTO(User model) => UserJTO();
}

```

### Test File

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/models/user/user.dart';
import 'package:{{package_name}}/repositories/mappers/user_mapper.dart';
import 'package:{{package_name}}/services/network/jto/user/user_jto.dart';
import '../../fixtures/jto/user_jto_fixture_factory.dart';

void main() {
  late UserMapper mapper;
  late UserJTO dto;
  late User model;

  setUp(() {
    dto = UserJTOFixture.factory().makeSingle();

    model = User();
    mapper = UserMapper();
  });

  test('mapping User object from UserJTO', () {
    expect(mapper.fromDTO(dto), equals(model));
  });

  test('mapping User to UserJTO', () {
    expect(mapper.toDTO(model), equals(dto));
  });
}
```
