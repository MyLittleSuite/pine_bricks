# Pine

A brick to create Pine Architecture support files.

## How to use 🚀

```
mason make pine
```

## Outputs 📦

```
├── lib
│   └── di
│       └── blocs.dart
│       └── dependency_injector.dart
│       └── mappers.dart
│       └── providers.dart
│       └── repositories.dart
└── ...
```

### Dependency Injector File

```dart
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pine/pine.dart';
import 'package:provider/single_child_widget.dart';

part 'blocs.dart';

part 'mappers.dart';

part 'providers.dart';

part 'repositories.dart';

class DependencyInjector extends StatelessWidget {
  final Widget child;

  const DependencyInjector({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) =>
      DependencyInjectorHelper(
        blocs: _blocs,
        mappers: _mappers,
        providers: _providers,
        repositories: _repositories,
        child: child,
      );
}
```

### Blocs File

```dart
part of 'dependency_injector.dart';

final List<BlocProvider> _blocs = [];

```

### Mappers File

```dart
part of 'dependency_injector.dart';

final List<SingleChildWidget> _mappers = [];

```
### Providers File

```dart
part of 'dependency_injector.dart';

final List<SingleChildWidget> _providers = [];

```
### Repositories File

```dart
part of 'dependency_injector.dart';

final List<RepositoryProvider> _repositories = [];

```