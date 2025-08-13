import 'package:flutter_test/flutter_test.dart';

import 'package:visify/main.dart';
import 'package:visify/data/mock_movies.dart';

void main() {
  testWidgets('Displays mocked movies', (WidgetTester tester) async {
    await tester.pumpWidget(const VisifyApp());

    expect(find.text(mockMovies.first.title), findsOneWidget);
  });
}
