import 'package:pine/pine.dart';
import 'package:{{package_name}}/models/{{model_file_name}}/{{model_file_name}}.dart';
import '{{{dto_full_path}}}';

class {{name}} extends DTOMapper<{{dto_full_name}}, {{model_name}}> {
  @override
  {{model_name}} fromDTO({{dto_full_name}} dto) => {{model_name}}();

  @override
  {{dto_full_name}} toDTO({{model_name}} model) => {{dto_full_name}}();
}
