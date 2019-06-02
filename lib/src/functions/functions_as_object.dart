void main() {
  var data = ["lypeer", "lumiaXu"];
  var numberData = [1, 2, 3, 4];

  InvokeFunction invokeFunction = new InvokeFunction();

  data.forEach(printAll);
  invokeFunction.invoke(data, printAll);

  Function a = printAll;
  data.forEach(a);
  invokeFunction.invoke(data, a);

  Function b = (Object ss) => print("this is b and parameter is $ss");
  data.forEach(b);
  invokeFunction.invoke(data, b);
  numberData.forEach(b);
  invokeFunction.invoke(numberData, b);
}

void printAll(Object o) {
  print(o);
}

class InvokeFunction {
  void invoke(List inData, void function(Object o)) {
    print("\ninvoke start");
    for (var variable in inData) {
      function(variable);
    }
    print("In invoke end\n");
  }
}
