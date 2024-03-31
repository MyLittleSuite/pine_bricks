{{#context}}import 'package:flutter/material.dart';
import 'package:provider/provider.dart';{{/context}}

/// Abstract class of {{name}}Service
abstract class {{name}}Service {
  {{#functions}}void {{method_name}}();
  {{/functions}}
}

/// Implementation of the base interface {{name}}Service
class {{name}}ServiceImpl implements {{name}}Service {
  const {{name}}ServiceImpl();

  {{#functions}}@override
  void {{method_name}}() {

  }

  {{/functions}}
}

{{#context}}extension {{name}}ServiceExtension on BuildContext {
  /// Extension method used to get the [{{name}}Service] instance
  {{name}}Service get {{name.camelCase()}}Service => read<{{name}}Service>();
}{{/context}}