// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_news/utils/index.dart';

import 'package:list_news/main.dart';

void main() {
  group('logic1', () {
    test('logic1.1', () {
      List<int> input1 = [1, 3, 5, 7, 9];
      final result = logic1(input1);
      expect(result, 'middle index is 3');
    });
    test('logic1.2', () {
      List<int> input1 = [3, 6, 8, 1, 5, 10, 1, 7];
      final result = logic1(input1);
      expect(result, 'middle index is 4');
    });
    test('logic1.3', () {
      List<int> input1 = [3, 5, 6];
      final result = logic1(input1);
      expect(result, 'index not found');
    });
  });
  group('check palindrome', () {
    test('aka', () {
      final result = checkPalindrome('aka');
      expect(result, true);
    });
    test('Level', () {
      final result = checkPalindrome('Level');
      expect(result, true);
    });
    test('Hello', () {
      final result = checkPalindrome('Hello');
      expect(result, false);
    });
  });
  group('check Sum Zero', () {
    test('ex1', () {
      final result = findSumNumberZero([-1, -5, -3, 0, 1, 2, -1]);
      expect(result, [
        [-3, 1, 2],
        [-1, -1, 2],
        [-1, 0, 1]
      ]);
    });
    test('ex2', () {
      final result = findSumNumberZero([1, 1, 2]);
      expect(result, []);
    });
    test('ex3', () {
      final result = findSumNumberZero([1]);
      expect(result, []);
    });
  });

  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
}
