import 'package:pine/pine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{file_name}}_response.g.dart';

part '{{file_name}}_response.freezed.dart';

class {{name}}Response extends DTO with _${{name}}Response {
  const factory {{name}}Response() = _{{name}}Response;

  factory {{name}}Response.fromJson(Map<String, dynamic> json) =>
    _${{name}}ResponseFromJson(json);
}
