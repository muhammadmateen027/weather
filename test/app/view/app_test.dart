import 'package:flutter_test/flutter_test.dart';
import 'package:weather/app/app.dart';
import 'package:weather/weather/weather.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(SearchWeatherPage), findsOneWidget);
    });
  });
}
