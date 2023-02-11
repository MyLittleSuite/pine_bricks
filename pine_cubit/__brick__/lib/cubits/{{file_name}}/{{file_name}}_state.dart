part of '{{file_name}}_cubit.dart';

@freezed
class {{state}} with _${{state}} {
  {{#states}}
  const factory {{factory_name}}() = {{class_name}};
  {{/states}}
}
