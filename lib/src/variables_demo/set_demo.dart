void main() {
  var a = new Set();
  print(a);
  // set literals use {} and list literals use []
  var b = const {"1", "2", "3"};

  // Unsupported operation: Cannot change unmodifiable set
  // b.add("4");
  print(b);

  var c = <String>{};
  print(c);

  var d = {}; // Creates a map, not a set. Because map literals came into Dart first.
  print(d);

  // maps support spread operators (... and ...?) and collection if and for, just like lists do.
}
