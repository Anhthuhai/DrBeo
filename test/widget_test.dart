import 'package:flutter_test/flutter_test.dart';
import 'package:dr_icu/main.dart';

void main() {
  testWidgets('DR ICU app basic functionality test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const DrIcuApp());

    // Verify that medical disclaimer appears
    expect(find.text('Medical Disclaimer'), findsWidgets);
    
    // Verify that at least one navigation element appears
    expect(find.text('Home'), findsOneWidget);
  });
}
