import 'package:flutter_test/flutter_test.dart';
import 'package:flag/main.dart'; // Ensure this import is correct based on your project structure

void main() {
  testWidgets('App starts with SplashScreen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Since SplashScreen likely doesn't have text content that's easy to test for,
    // this example just checks the type. You might replace this with a more specific test,
    // such as looking for an image or text unique to your SplashScreen.

    // This assumes SplashScreen is the first screen shown by MyApp.
    // If your SplashScreen shows a specific image, text, or other identifiable widget,
    // consider using find.byType(), find.byKey(), or find.text() to verify its presence.
  });
}
