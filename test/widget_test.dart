import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:airbnb_clone/main.dart';
import 'package:airbnb_clone/providers/property_provider.dart';

void main() {
  testWidgets('AirbnbCloneApp renders HomeScreen', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => PropertyProvider(),
        child: const AirbnbCloneApp(),
      ),
    );

    // Verify that the HomeScreen's title is displayed.
    expect(find.text('Airbnb Clone'), findsOneWidget);

    // Verify that at least one PropertyCard is displayed (based on the sample data).
    expect(find.text('Cozy Beachfront Villa'), findsOneWidget);
  });
}
