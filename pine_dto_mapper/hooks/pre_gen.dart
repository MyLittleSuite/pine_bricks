import 'dart:io';

import 'package:mason/mason.dart';
import 'package:pine_bricks_helper/pine_bricks_helper.dart';

void run(HookContext context) {
  final parser = Parser();
  Pubspec? pubspec;
  try {
    pubspec = parser.parse();
  } catch (e) {
    stderr.writeln(e);
    exit(0);
  }

  final name = context.vars['name'] as String;
  final modelName = context.vars['model_name'] as String;
  final dtoName = context.vars['dto_name'] as String;
  final type = context.vars['type'] as String;
  final request = 'request' == type;
  final response = 'response' == type;
  final jto = 'jto' == type;
  final dtoPathType = request ? 'requests' : response ? 'responses' : jto ? 'jto' : '';
  final dtoFileName = dtoName.snakeCase;
  final dtoFullName =
      '$dtoName${request ? 'Request' : response ? 'Response' : jto ? 'JTO' : ''}';
  final packageName = pubspec.name;
  final dtoFullPath = 'package:$packageName/services/network/$dtoPathType/$dtoFileName/${dtoFileName}_$type.dart';
  final dtoFixtureFullPath = '../../fixtures/$dtoPathType/${dtoFileName}_${type}_fixture_factory.dart';

  context.vars = {
    ...context.vars,
    'file_name': name.replaceAll('JTO', 'Jto').snakeCase,
    'model_file_name': modelName.snakeCase,
    'dto_file_name': dtoFileName,
    'dto_full_name': dtoFullName,
    'dto_full_path': dtoFullPath,
    'dto_fixture_full_path': dtoFixtureFullPath,
    'package_name': packageName,
    'request': request,
    'response': response,
    'jto': jto,
  };
}
