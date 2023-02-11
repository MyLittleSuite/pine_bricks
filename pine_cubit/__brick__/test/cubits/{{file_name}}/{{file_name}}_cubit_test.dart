import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/cubits/{{file_name}}/{{file_name}}_request.dart';

void main() {
  late {{cubit_name}} cubit;

  setUp(() {
    cubit = {{cubit_name}}();
  });

  {{#methods}}
  /// Testing the method [{{method}}]
  group('when the method {{method}} is called', () {
    blocTest<{{cubit_name}}, {{state}}>(
      'test that {{cubit_name}} emits {{default_state}} when {{method}} is called',
      setUp: () {
        //TODO: setup the environment
      },
      build: () => cubit,
      act: (cubit) {
        cubit.{{method}}();
      },
      expect: () => <{{state}}>[
        //TODO: define the emitted {{state}} states
      ],
      verify: (_) {
        //TODO: verify that methods are invoked properly
      },
    );
  });
  {{/methods}}
}