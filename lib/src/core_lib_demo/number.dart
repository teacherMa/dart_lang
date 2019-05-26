class Number {
  void assertPrint() {
    print(int.parse("123") is int);
    print(double.parse("123.123"));
    print(int.parse("0xFFFFFFFF"));
    print(double.parse(3456.toStringAsExponential(1)));
  }
}

void main() {
  Number().assertPrint();
}
