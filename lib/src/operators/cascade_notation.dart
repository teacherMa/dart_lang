// 级联和Java中的链式调用有点类似，但是Java中的链式调用要求前一个必须返回一个对象才能继续下一个链式调用，
// 而级联没有这个要求。参见本例中的printYes()

void main() {
  Student lp = new Student();
  lp
    ..printYes()
    // If you use .printYes(), you can't continue assign value to other filed, because printYes() return void
    ..age = 23
    ..name = "lp"
    ..no = "2014010911"
    ..classMate = null;

  print(lp);
}

class Student {
  String name;
  int age;
  String no;
  Student classMate;

  @override
  String toString() {
    return "name = $name, age = $age , no = $no, classMate = ${classMate ?? ""}";
  }

  void printYes() {
    print("yes");
  }
}
