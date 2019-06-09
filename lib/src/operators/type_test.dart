void main() {
  var a = new A();
  var b = new B();
  print(a is A);
  print(b is A);
  print(b is B);
  print(b is! B);

  //  For operators that work on two operands, the leftmost operand determines which version of the operator is used.
  //  For example, if you have a Vector object and a Point object, aVector + aPoint uses the Vector version of +.
  // 对于二元操作符来说，使用的操作符的版本由左边的操作数决定。
  print(a == b);
  print(b == a);

  // print(a as B);
  // type 'A' is not a subtype of type 'B' in type cast

  if(b is A) {
    print("b is A");
  }
  // you can us (b as A).name = "asdf"; but the code isn’t equivalent,if b is null, the first(with if)
  // example dose nothing, the second(with as ) throw exception
}

class A {
  @override
  bool operator ==(other) {
    // TODO: implement ==
    return true;
  }
  String name;
}

class B extends A {
  @override
  bool operator ==(other) {
    // TODO: implement ==
    return false;
  }
}
