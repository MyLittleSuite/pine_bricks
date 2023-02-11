part of '{{file_name}}_bloc.dart';

@freezed
class {{event}} with _${{event}} {
  {{#events}}
  const factory {{factory_name}}() => {{class_name}};
  {{/events}}
}
