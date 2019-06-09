void main() {
  var a;

  // ??= works only assigned value is null
  a ??= 1111;

  print(a);
  a = 1;
  a ??= 1111;
  print(a);

  var b;
  // if b is null, the value of ?? is "b is null", otherwise is b
  print(b ?? "b is null");
  b = "bbb";
  print(b ?? "b is null");

  A obj;
  print(obj?.name);

  // print(obj.name);
  // NoSuchMethodError: The getter 'name' was called on null.
}

class A {
  String name;
}
