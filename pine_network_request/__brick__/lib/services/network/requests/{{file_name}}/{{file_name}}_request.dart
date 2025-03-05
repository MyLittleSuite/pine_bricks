import 'package:pine/pine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{file_name}}_request.g.dart';

part '{{file_name}}_request.freezed.dart';

@freezed
class {{name}}Request extends DTO with _${{name}}Request {
  const {{name}}Request._() : super();

  const factory {{name}}Request() = _{{name}}Request;

  factory {{name}}Request.fromJson(Map<String, dynamic> json) =>
    _${{name}}RequestFromJson(json);
}
