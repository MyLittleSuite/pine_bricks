import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/blocs/{{file_name}}/{{file_name}}_request.dart';

void main() {
  late {{bloc_name}} bloc;

  setUp(() {
    bloc = {{bloc_name}}();
  });

  {{#events}}
  /// Testing the event [{{class_name}}]
  group('when the event {{class_name}} is added to the BLoC', () {
    blocTest<{{bloc_name}}, {{state}}>(
      'test that {{bloc_name}} emits {{default_state}} when {{method}} is called',
      setUp: () {
        //TODO: setup the environment
      },
      build: () => bloc,
      act: (bloc) {
        bloc.{{method}}();
      },
      expect: () => <{{state}}>[
        //TODO: define the emitted {{state}} states
      ],
      verify: (_) {
        //TODO: verify that methods are invoked properly
      },
    );
  });
  {{/events}}
}