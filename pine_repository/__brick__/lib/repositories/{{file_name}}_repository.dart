{{#context}}import 'package:flutter/material.dart';
import 'package:provider/provider.dart';{{/context}}

/// Abstract class of {{name}}Repository
abstract interface class {{name}}Repository {
  {{#functions}}void {{method_name}}();
  {{/functions}}
}

/// Implementation of the base interface {{name}}Repository
class {{name}}RepositoryImpl implements {{name}}Repository {
  const {{name}}RepositoryImpl();

  {{#functions}}@override
  void {{method_name}}() {

  }

  {{/functions}}
}

{{#context}}extension {{name}}RepositoryExtension on BuildContext {
  /// Extension method used to get the [{{name}}Repository] instance
  {{name}}Repository get {{name.camelCase()}}Repository => read<{{name}}Repository>();
}{{/context}}