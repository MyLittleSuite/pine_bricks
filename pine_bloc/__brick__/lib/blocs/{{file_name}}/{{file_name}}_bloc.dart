import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';
{{#context}}import 'package:flutter/material.dart';{{/context}}

part '{{file_name}}_event.dart';

part '{{file_name}}_state.dart';

part '{{file_name}}_bloc.freezed.dart';

/// The {{bloc_name}}
class {{bloc_name}} extends Bloc<{{event}}, {{state}}> {
  /// Create a new instance of [{{bloc_name}}].
  {{bloc_name}}() : super(const {{default_state}}()) {
    {{#events}}on<{{class_name}}>({{action}});
    {{/events}}
  }
  {{#events}}
  /// Method used to add the [{{class_name}}] event
  void {{method}}() => add(const {{factory_name}}());
  {{/events}}
  {{#events}}
  FutureOr<void> {{action}}(
    {{class_name}} event,
    Emitter<{{state}}> emit,
  ) {
    //TODO: map {{class_name}} to {{state}} states
  }
  {{/events}}
}

{{#context}}extension {{bloc_name}}Extension on BuildContext {
  /// Extension method used to get the [{{bloc_name}}] instance
  {{bloc_name}} get {{bloc_name.camelCase()}} => read<{{bloc_name}}>();
}{{/context}}