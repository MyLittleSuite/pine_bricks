import 'package:freezed_annotation/freezed_annotation.dart';

part '{{file_name}}.freezed.dart';

@freezed
abstract class {{name}} with _${{name}} {
  const {{name}}._();

  const factory {{name}}() = _{{name}};
}