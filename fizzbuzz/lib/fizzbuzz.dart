class FizzBuzz {
  String getFizzBuzz(int input) {
    if (this.isFizz(input) && this.isBuzz(input)) {
      return 'fizzbuzz';
    }
    if (this.isFizz(input)) {
      return 'fizz';
    }
    if (this.isBuzz(input)) {
      return 'buzz';
    }
    return input.toString();
  }

  bool isFizz(int input) {
    return _isDivisibleBy(3, input);
  }

  bool isBuzz(int input) {
    return _isDivisibleBy(5, input);
  }

  bool _isDivisibleBy(int div, int input) {
    return (input % div == 0);
  }
}
