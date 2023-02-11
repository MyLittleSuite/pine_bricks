# Pine Page

A brick to create your pages (stateless, stateful and with or without routing) class including tests.

This brick makes use of the internal lib pine_bricks_helper to get access to the package name, so please run this brick
in the root of your project where a valid pubspec.yaml file exists. Also, (eventually) make sure you have previously set
up your project to work with the [auto_route](https://pub.dev/packages/auto_route) and
the [flutter_bloc](https://pub.dev/packages/flutter_bloc) library.

## How to use 🚀

```
mason make pine_page --name "SignIn"
```

## Variables ✨

| Variable     | Description                                                                                                                                            | Default | Type     |
|--------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|---------|----------|
| `name`       | The name of the page                                                                                                                                   | Dash    | `string` |
| `state`      | Whether the class should be stateful or not                                                                                                            | false   | `bool`   |
| `auto_route` | Include the AutoRouteWrapper mixin (needs [auto_route](https://pub.dev/packages/auto_route) and [flutter_bloc](https://pub.dev/packages/flutter_bloc)) | false   | `bool`   |

## Outputs 📦

```
--name "SignIn"
├── lib
│   └── pages
│       └── sign_in_page.dart
├── test
│   └── pages
│       └── sign_in_page
│           └── sign_in_page_test.dart
└── ...
```

### Stateless Page File

```dart
import 'package:flutter/material.dart';

/// Enter the SignIn documentation here
class SignInPage extends StatelessWidget {

  /// The constructor of the page.
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) => Placeholder();
}
```

### Stateful Page File

```dart
import 'package:flutter/material.dart';

/// Enter the SignIn documentation here
class SignInPage extends StatefulWidget {

  /// The constructor of the page.
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInState();
}

class _SignInState extends State<SignInPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Placeholder();
}
```

### Stateless Page File (with AutoRoute)

```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

/// Enter the SignIn documentation here
class SignInPage extends StatelessWidget with AutoRouteWrapper {

  /// The constructor of the page.
  const SignInPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) =>
      MultiBlocProvider(
        providers: [
          //TODO inject your BLoCs here
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) => Placeholder();
}
```

### Stateful Page File (with AutoRoute)

```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

/// Enter the SignIn documentation here
class SignInPage extends StatefulWidget with AutoRouteWrapper {

  /// The constructor of the page.
  const SignInPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) =>
      MultiBlocProvider(
        providers: [
          //TODO inject your BLoCs here
        ],
        child: this,
      );

  @override
  State<SignInPage> createState() => _SignInState();
}

class _SignInState extends State<SignInPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Placeholder();
}
```

### Test File

```dart
import 'package:pine/pine.dart';
import 'package:{{package_name}}/pages/sign_in_page.dart';
import 'package:flutter_test/flutter_test.dart';

/// Test case for the page SignIn
void main() {
  setUp(() {});

  testWidgets('write your test description here', (tester) async {
    await tester.pumpWidget(
      DependencyInjectorHelper(
        child: const MaterialApp(
          home: SignInPage(),
        ),
      ),
    );

    //TODO: Pump your page, write your expectations, and verify invocations.
  });
}

```
