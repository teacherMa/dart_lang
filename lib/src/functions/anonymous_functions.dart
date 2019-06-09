void main() {
  List data = [1, 2, 3, 4, 5];
  data.forEach((item) {
    if (item > 1) {
      print(item);
    }
  });

  data.forEach((item) => print(item > 1));

  InvokeFunction invokeFunction = new InvokeFunction();
  invokeFunction.invoke(data, (Object i, {int age, int num}) {
    print(i.hashCode);
    print("age = $age");
  });
}

class InvokeFunction {
  void invoke(List inData, void function(Object o, {int age, int num})) {
    print("\ninvoke start");
    for (var variable in inData) {
      function(variable);
    }
    print("In invoke end\n");
  }
}
