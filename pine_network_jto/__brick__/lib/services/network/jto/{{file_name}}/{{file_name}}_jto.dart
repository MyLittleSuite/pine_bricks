import 'package:pine/pine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{file_name}}_jto.g.dart';

part '{{file_name}}_jto.freezed.dart';

class {{name}}JTO extends DTO with _${{name}}JTO {
  const factory {{name}}JTO() = _{{name}}JTO;

  factory {{name}}JTO.fromJson(Map<String, dynamic> json) =>
    _${{name}}JTOFromJson(json);
}
