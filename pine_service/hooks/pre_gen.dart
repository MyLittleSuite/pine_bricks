import 'dart:io';

import 'package:mason/mason.dart';
import 'package:pine_bricks_helper/pine_bricks_helper.dart';
import 'package:strings/strings.dart';

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

  final methods = (context.vars['methods'] as String)
      .split(',')
      .map((method) => method.trim())
      .where((method) => method.isNotEmpty);
  final rearrangedMethods = methods
      .map((method) => {
            'method_name': '${method.camelCase}',
          })
      .toList(growable: false);

  context.vars = {
    ...context.vars,
    'file_name': name.snakeCase,
    'functions': rearrangedMethods,
    'package_name': packageName,
  };
}
