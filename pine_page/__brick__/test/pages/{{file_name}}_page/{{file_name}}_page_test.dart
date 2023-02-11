import 'package:pine/pine.dart';
import 'package:{{package_name}}/pages/{{file_name}}_page.dart';
import 'package:flutter_test/flutter_test.dart';

/// Test case for the page {{name}}
void main() {
  setUp(() {});

  testWidgets('write your test description here', (tester) async {
    await tester.pumpWidget(
      DependencyInjectorHelper(
        child: const MaterialApp(
          home: {{name}}Page(),
        ),
      ),
    );

    //TODO: Pump your page, write your expectations, and verify invocations.
  });
}
