// Method 和 Function 的区别在于，Methods are functions that provide behavior for an object.

void main() {
  AbstractClass abstractClass = new AbstractClassImpl(2);
  abstractClass.age = 5;
  abstractClass.printAge();

  // 抽象函数可以有构造函数，但是不能被实例化
  // 如果没有定义factory方法，
  // AbstractClass abstractClass = new AbstractClass(); 就会报错。
  // 但是factory方法反正是不能返回一个AbstractClass对象的，只能返回它的非抽象子类，但是父类定义的时候怎么知道
  // 子类有哪些呢？所以这种语法的意义在哪里？
  AbstractClass abstractClass2 = new AbstractClass();
}

class InstanceMethod {
  int _age;

  // 实例方法，实例方法可以访问实例变量和this，和Java一致。
  void changeAge() {
    print(_age);
    _age = 2;
    this._age = 1;
  }
}

class GetAndSet {
  // 会自动生成getter&setter方法，通过GetAndSet.canGet其实是调用了getter方法和setter方法。
  // 但是其实在代码里看不到，通过GetAndSet2继承GetAndSet，就可以看到和有两个和参数同名的方法被重写了。
  int canGet = 1;

  // 具有"_"前缀的变量不能自动生成getter和setter方法，在其他文件访问时必须通过额外提供的getter和setter方法。
  int _canNotGet = 1;

  int get canNotGet => _canNotGet;

  set canNotGet(int num) => _canNotGet = num;
}

class GetAndSet2 extends GetAndSet {
  @override
  int get canGet => super.canGet;

  @override
  set canNotGet(int num) {
    super.canNotGet = num;
  }

  @override
  int get canNotGet => super.canNotGet;
}

abstract class AbstractClass {
  int age;

  static int sAge;

  // 有抽象方法的类一定是抽象类，但是抽象类不一定有抽象方法
//  void printAge() {
//
//  }

  // 将默认构造函数定义为factory，使得这个抽象类看起来可以被new出来了。
  factory AbstractClass() {
    return new AbstractClassImpl(1);
  }

  void printAge();

  // de means default constructor
  AbstractClass.de(this.age) {
    print(age);
  }

  void myPrint() {
    printAge();
  }

  @override
  bool operator ==(other) {
    return this == (other);
  }

// The expression e1 != e2 is just syntactic sugar for !(e1 == e2).
// so != is not an overridable operator.
//  bool operator != (other) {
//
//  }
}

class AbstractClassImpl extends AbstractClass {
  int age2 = 3;

  // 同时存在括号里的this.xxx初始化和调用super class 的函数，谁先执行？
  AbstractClassImpl(this.age2) : super.de(age2 - 1);

  @override
  void printAge() {
    print(0);
    print(age2);
  }
}

// 任何一个类都隐式的声明了一个同名接口
// 这个接口包含类中的所有实例方法，也包括这个类实现的其他方法，甚至包括getter&setter，但是不包括构造函数，不包括重写的运算符
// 一个类可以multiple implement interface
// 实现接口的类不需要调用接口的构造方法，无法访问接口类的实例变量，可以访问静态变量。
class AbstractClassImpl2 implements AbstractClass {
  @override
  void myPrint() {}

  @override
  void printAge() {}

  // 如果age被声明成 _age，就不会自动生成get方法
  @override
  int get age => null;

  // 如果age被声明成final，就不会自动生成set方法
  @override
  set age(int _age) {}

  /// 这个方法好像很重要，迫于现在的Dart水平，还不知道为什么重要，参看：
  /// https://github.com/dart-lang/sdk/blob/master/docs/language/informal/nosuchmethod-forwarding.md
  @override
  noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}
