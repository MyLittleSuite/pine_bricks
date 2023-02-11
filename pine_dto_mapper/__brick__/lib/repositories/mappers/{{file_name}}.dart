import 'package:pine/pine.dart';
import 'package:{{package_name}}/models/{{model_file_name}}.dart';
import 'package:{{package_name}}{{dto_path}}';

class {{name}} extends DTOMapper<{{dto_name}}, {{model_name}}> {
  @override
  {{model_name}} fromDTO({{dto_name}} dto) => {{model_name}}();

  @override
  {{dto_name}} toDTO({{model_name}} model) => {{dto_name}}();
}
