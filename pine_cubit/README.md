# Pine Cubit

A brick to create your cubits (with methods and states) including tests.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists. Also, make sure you have previously set
up your project to work with the [freezed](https://pub.dev/packages/freezed) and
the [flutter_cubit](https://pub.dev/packages/flutter_cubit) library.

## How to use 🚀

```
mason make pine_cubit --name "SignIn" --methods "perform" --states "performing,performed,error"
```

## Variables ✨

| Variable  | Description                               | Default | Type     |
|-----------|-------------------------------------------|---------|----------|
| `name`    | The name of the cubit                      | Dash    | `string` |
| `methods` | The list of the methods (comma separated) | action  | `string` |
| `states`  | The list of the states (comma separated)  | initial | `string` |

## Outputs 📦

```
--name "SignIn" --methods "perform" --states "performing,performed,error"
├── lib
│   └── cubits
│       └── sign_in
│           |── sign_in_cubit.dart
│           └── sign_in_state.dart
├── test
│   └── cubits
│       └── sign_in
│           └── sign_in_cubit_test.dart
└── ...
```

### Cubit File

```dart
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';

part 'sign_in_state.dart';

part 'sign_in_cubit.freezed.dart';

/// The SignInCubit
class SignInCubit extends Cubit<SignInState> {

  /// Create a new instance of [SignInCubit].
  SignInCubit() : super(const SignInState.performing());

  /// Method used to perform the [perform] action
  FutureOr<void> perform() {
    //TODO: map PerformSignInEvent to SignInState states
  }
}

```

### State File

```dart
part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.performing() = _PerformingSignInState;

  const factory SignInState.performed() = _PerformedSignInState;

  const factory SignInState.error() = _ErrorSignInState;
}

```

### Test File

```dart
import 'package:cubit_test/cubit_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/cubits/sign_in/sign_in_cubit.dart';

void main() {
  late SignInCubit cubit;

  setUp(() {
    cubit = SignInCubit();
  });

  /// Testing the method [perform]
  group('when the method perform is called', () {
    cubitTest<SignInCubit, SignInState>(
      'test that SignInCubit emits SignInState.performing when perform is called',
      setUp: () {
        //TODO: setup the environment
      },
      build: () => cubit,
      act: (cubit) {
        cubit.perform();
      },
      expect: () =>
      <SignInState>[
        //TODO: define the emitted SignInState states
      ],
      verify: (_) {
        //TODO: verify that methods are invoked properly
      },
    );
  });
}
```
