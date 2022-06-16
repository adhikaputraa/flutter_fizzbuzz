import 'package:flutter_test/flutter_test.dart';
import 'package:fizzbuzz/fizzbuzz.dart';

void main() {
  var fb = new FizzBuzz();

  test('should return 1 when gives 1', () {
    var result = fb.getFizzBuzz(1);
    expect('1', result);
  });

  test('should return 2 when gives 2', () {
    var result = fb.getFizzBuzz(2);
    expect('2', result);
  });

  test('should return fizz when gives 3', () {
    var result = fb.getFizzBuzz(3);
    expect('fizz', result);
  });

  test('should return buzz when gives 5', () {
    var result = fb.getFizzBuzz(5);
    expect('buzz', result);
  });

  test('should return buzz when gives 6', () {
    var result = fb.getFizzBuzz(6);
    expect('fizz', result);
  });

  test('should return buzz when gives 10', () {
    var result = fb.getFizzBuzz(10);
    expect('buzz', result);
  });

  test('should return buzz when gives 15', () {
    var result = fb.getFizzBuzz(15);
    expect('fizzbuzz', result);
  });
}
