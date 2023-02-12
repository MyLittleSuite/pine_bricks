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
  final packageName = pubspec.name;
  final stateful = context.vars['state'] as bool;
  final stateless = !stateful;

  context.vars = {
    ...context.vars,
    'file_name': name.snakeCase,
    'stateless': stateless,
    'stateful': stateful,
    'package_name': packageName,
  };
}
