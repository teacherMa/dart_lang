// 范型在集合中的应用以及类型推断

void main() {
  var names = ["1", "2"];
  var ss = <String>{"1", "2"};
  var sss = <String, String>{};

  // 和Java中不同，java中的范型具有一个重要特征是编译期间会执行类型擦除，在运行期间只能知道是List<>，但是无法知道是不是List<String>
  print(names.runtimeType);
  print(ss.runtimeType);
  print(sss.runtimeType);
}
