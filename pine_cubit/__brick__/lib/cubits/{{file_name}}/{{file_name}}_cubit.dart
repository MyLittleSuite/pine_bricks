import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';
{{#context}}import 'package:flutter/material.dart';{{/context}}

part '{{file_name}}_state.dart';

part '{{file_name}}_cubit.freezed.dart';

/// The {{cubit_name}}
class {{cubit_name}} extends Cubit<{{state}}> {
  /// Create a new instance of [{{cubit_name}}].
  {{cubit_name}}() : super(const {{default_state}}());
  {{#methods}}
  /// Method used to perform the [{{method}}] action
  FutureOr<void> {{method}}() {
    //TODO: map {{method}} to {{state}} states
  }
  {{/methods}}
}

{{#context}}extension on BuildContext {
  /// Extension method used to get the [{{cubit_name}}] instance
  {{cubit_name}} get {{cubit_name.camelCase()}} => read<{{cubit_name}}>();
}{{/context}}