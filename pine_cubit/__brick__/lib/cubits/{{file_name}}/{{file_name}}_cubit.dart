import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{file_name}}_state.dart';

part '{{file_name}}_cubit.freezed.dart';

/// The {{cubit_name}}
class {{cubit_name}} extends Cubit<{{state}}> {

  /// Create a new instance of [{{cubit_name}}].
  {{cubit_name}}() : super(const {{default_state}}());
  {{#methods}}
  /// Method used to perform the [{{action}}] action
  void {{action}}()() {
    //TODO: map {{action}} to {{state}} states
  }
  {{/methods}}
}
