# Pine BLoC

A brick to create your blocs (with events and states) including tests.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists. Also, make sure you have previously set
up your project to work with the [freezed](https://pub.dev/packages/freezed) and
the [flutter_bloc](https://pub.dev/packages/flutter_bloc) library.

## How to use 🚀

```
mason make pine_bloc --name "SignIn" --events "perform" --states "performing,performed,error"
```

## Variables ✨

| Variable | Description                              | Default | Type     |
|----------|------------------------------------------|---------|----------|
| `name`   | The name of the bloc                     | Dash    | `string` |
| `events` | The list of the events (comma separated) | action  | `string` |
| `states` | The list of the states (comma separated) | initial | `string` |

## Outputs 📦

```
--name "SignIn" --events "perform" --states "performing,performed,error"
├── lib
│   └── blocs
│       └── sign_in
│           |── sign_in_bloc.dart
│           |── sign_in_event.dart
│           └── sign_in_state.dart
├── test
│   └── blocs
│       └── sign_in
│           └── sign_in_bloc_test.dart
└── ...
```

### BLoC File

```dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

/// The SignInBloc
class SignInBloc extends Bloc<SignInEvent, SignInState> {

  /// Create a new instance of [SignInBloc].
  SignInBloc() : super(const SignInState.performing()) {
    on<PerformSignInEvent>(_onPerform);
  }

  /// Method used to add the [PerformSignInEvent] event
  void perform() => add(SignInEvent.perform());

  FutureOr<void> _onPerform(PerformSignInEvent event,
      Emitter<SignInState> emit,) {
    //TODO: map PerformSignInEvent to SignInState states
  }
}

```

### Event File

```dart
part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.perform() => PerformSignInEvent;
}

```

### State File

```dart
part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.performing() = _PerformingSignInState;

  const factory SignInState.performed() = _PerformedSignInState;

  const factory SignInState.error() = _ErrorSignInState;
}

```

### Test File

```dart
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/blocs/sign_in/sign_in_bloc.dart';

void main() {
  late SignInBloc bloc;

  setUp(() {
    bloc = SignInBloc();
  });

  /// Testing the event [PerformSignInEvent]
  group('when the event PerformSignInEvent is added to the BLoC', () {
    blocTest<SignInBloc, SignInState>(
      'test that SignInBloc emits SignInState.performing when perform is called',
      setUp: () {
        //TODO: setup the environment
      },
      build: () => bloc,
      act: (bloc) {
        bloc.perform();
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
