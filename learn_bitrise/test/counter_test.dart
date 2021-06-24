


import 'package:flutter_test/flutter_test.dart';
import 'package:learn_bitrise/counter.dart';

void main() {
  test('Counter value should be zero', () {
    Counter counter = Counter();
    expect(counter.counter, 0);

  });
  test('Counter value incremented', () {
    Counter counter = Counter();

    counter.increment();

    expect(counter.counter, 1);
  });
}