import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
  void {{method}}() => add({{factory_name}}());
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
