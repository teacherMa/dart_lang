class Number {

  void assertPrint() {
    print(int.parse("123") is int);
    print(double.parse("123.123"));
    print(int.parse("0xFFFFFFFF", radix: 16));
  }

}

void main() {
  Number().assertPrint();
}