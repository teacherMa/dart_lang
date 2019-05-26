class StringPrint {

  void printX() {
    String a = "234";
    print(a.length);
    print(a.split(" "));
    print("asddfg".contains("sd"));
    for(var char in "character".split('')) {
      print(char);
    }
    var codeUnitLists = "Baidu Map".codeUnits.toList();
    print(codeUnitLists);
    print("DsdfD".toUpperCase());
    print("Dqwe:D)".toLowerCase());

    String isEmpty = "";
    print(isEmpty.isEmpty);

    var greeting = "Hello World";
    var newGreeting = greeting.replaceAll(RegExp("Hello"), "Hello Hello");
    print(newGreeting);
    print(greeting);
    print(newGreeting == greeting);

    var sb = StringBuffer();
    sb..write("123")
    ..write("456")
    ..writeAll(['1','2','3','4'], " ");
    print(sb.toString());
  }
}

void main() {
  StringPrint().printX();
}