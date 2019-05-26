void main() {
  var name = "sunmi";
  var age = 1;
  var date;
  print(name);
  print(age);
  print(date);

  const int a = 1;
  final int b = 1;

  final c = const [1,2];

  // c[0] = 0;
  // c.add(3);
  // Unsupported operation: Cannot add to an unmodifiable list

  print(c);

  double d = 1.0;

  String format = '''
    this is a String ,
    this is line 2
    ''';
  print(format);

  String anotherFormat = """
    this is a String ,
    this is line 2
    """;
  print(anotherFormat);

  String aString = "this is a \n string\n";
  print(aString);

  String rowString = r"this is a row \n string " + "\n";
  print(rowString);

  String anotherRawString = r"""
    this is anotherRawString ,
    this is line 2
    """;
  print(anotherRawString);
}
