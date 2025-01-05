part of '{{file_name}}_bloc.dart';

@freezed
sealed class {{event}} with _${{event}} {
  {{#events}}
  const factory {{factory_name}}() = {{class_name}};
  {{/events}}
}
