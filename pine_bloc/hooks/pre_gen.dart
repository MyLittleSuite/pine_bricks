import 'dart:io';

import 'package:mason/mason.dart';
import 'package:strings/strings.dart';
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
  final events = (context.vars['events'] as String)
      .split(',')
      .map((e) => e.trim())
      .where((e) => e.isNotEmpty);
  final states = (context.vars['states'] as String)
      .split(',')
      .map((e) => e.trim())
      .where((e) => e.isNotEmpty);
  final packageName = pubspec.name;

  final rearrangedEvents = events
      .map((event) => {
            'action': '_on${capitalize(event)}',
            'method': '${event.camelCase}',
            'factory_name': '${capitalize(name)}Event.${event.camelCase}',
            'class_name': '${capitalize(event)}${capitalize(name)}Event',
          })
      .toList(growable: false);

  final rearrangedStates = states
      .map((state) => {
            'factory_name': '${capitalize(name)}State.${state.camelCase}',
            'class_name': '_${capitalize(state)}${capitalize(name)}State',
          })
      .toList(growable: false);

  final defaultState = rearrangedStates.first;

  context.vars = {
    ...context.vars,
    'file_name': name.snakeCase,
    'bloc_name': '${capitalize(name)}Bloc',
    'event': '${capitalize(name)}Event',
    'state': '${capitalize(name)}State',
    'default_state': defaultState['factory_name'],
    'events': rearrangedEvents,
    'states': rearrangedStates,
    'package_name': packageName,
  };
}
