void main() {
  var values = [1, 2, 3, 4, 5];
  for (var i in values) {
    print(scream(i));
  }

  print("");

  values.map(scream).forEach(print);

  print("");

  values.skip(1).take(3).map(scream).forEach(print);
}

String scream(int length) => "A${'a' * length}h!";
