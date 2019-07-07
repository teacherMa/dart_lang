import 'dart:math';

void main() {
  Point p1 = Point(1, 2);

  // new is optional
  Point p2 = new Point(1, 2);

  print(identical(p1, p2));

  var a = const Point(1, 2);
  var b = const Point(1, 2);
  print(identical(a, b));

  const pointAndLine = const {
    'point': const [const Point(0, 0)],
    'line': const [const Point(1, 10), const Point(-2, 11)],
  };

  // you can omit the const before a constructor or literal
  // 这是Dart编程网上的原话，说的是可以忽略构造函数的const修饰符，为什么呢？
  // 用常量来给pointAndLine2赋值的时候，等号右边的应该是个编译时常量，所以{}和[]里的也是常量，
  // 但是literal的特性是编译时常量，不等于用const修饰。所以这句话为啥正确呢？
  const pointAndLine2 = {
    'point': [Point(0, 0)],
    'line': [Point(1, 10), Point(-2, 11)],
  };
  print(identical(pointAndLine, pointAndLine2));

  new NewAndroidVersion(1);

  StableObject cs1 = const StableObject(0, 0);
  StableObject cs2 = const StableObject(0, 0);
  print(identical(cs1, cs2));

  StableObject s1 = StableObject(0, 0);
  StableObject s2 = StableObject(0, 0);
  print(identical(s1, s2));
}

class AndroidVersion {
  int versionCode;
  String version;

  // 默认构造函数与类名相同，只要和类名相同，不管有没有参数，都是默认构造函数。
  // 在没有声明其他构造函数的情况下，会自动生成无参数的默认构造函数，这一点和Java类似。
  // 子类的构造函数会自动调用父类的无参默认构造函数。这一点和Java类似。
  // 如果父类没有无参默认构造函数，子类需要在Initializer list中指定调用的父类的构造函数.
  AndroidVersion() {
    print("AndroidVersion default construct");
  }

  // Dart中，好像不存在Java的OverLoad，某个名字的函数只能有一个，所以需要在构造函数后面再加字符串的形式，这叫做Named constructors
  // 在参数列表中使用this.xxx 为 xxx 赋值的方法只能在构造函数中使用。
  AndroidVersion.name(this.versionCode, this.version) {
    print("AndroidVersion name named construct");
  }

  // 在类中声明一个字段时，默认会生成get方法和set方法，即可以通过
  // AndroidVersion.versionCode 来进行访问和赋值，Dart会自动推断使用的是get还是set；
  // 所以这里是否可以看成：外界调用构造函数时传递的参数被用来调用set方法了？
  // 验证：将versionCode和version声明成私有的，以上两种语法糖就失效了。
  // 这种验证方法可能有其他的原因也能解释，所以这里还只是我的猜想。
  AndroidVersion.origin(this.versionCode, this.version) {
    print("AndroidVersion origin named construct");
  }
}

class NewAndroidVersion extends AndroidVersion {
  int newVersionCode;
  String newVersion;

  int age;

  // 这里冒号之后的叫做Initializer list。Initializer list只能是表达式。
  // 关于执行顺序：
  // 1.initializer list
  // 2.superclass’s no-arg constructor
  // 3.main class’s no-arg constructor
  // 需要注意的是 The right-hand side of an initializer does not have access to this.
  // 翻译过来是右侧无法访问this，但是除了赋值表达式，其他表达式怎么区分左侧和右侧呢？难道说只能有赋值表达式/指定构造函数吗？
  NewAndroidVersion(int age)
      : newVersionCode = printHa(),
        newVersion = "",
        age = max(1, 2) {
    print("NewAndroidVersion default construct");
  }

  NewAndroidVersion.name() : super.name(getDefaultVersionCode(), "1") {
    print("NewAndroidVersion name named construct");
  }

  // 这个叫Redirecting constructors.
  // 重定向构造函数不能有函数体，不能在Initializer list中对类中的字段进行赋值，所以这个东西有叼毛用吗？
  NewAndroidVersion.redirecting(int i) : this.name();

  static int getDefaultVersionCode() => 1;

  static int printHa() {
    print("Ha");
    return 1;
  }
}

class StableObject {
  static final StableObject origin = const StableObject(0, 0);

  final int x;
  final int y;

  // 这个叫做Constant constructors，它不会重复构造相同对象，调用Constant constructors时如果传的参数是一样的，那么构造出来的对象也一样。
  // Constant constructors不能有函数体。
  const StableObject(int x, int y)
      : x = x,
        y = y;
}

class Product {
  int type;

  static final Product s1 = new Product(1);
  static final Product s2 = new Product(2);
  static final Product s3 = new Product(3);

  //  Factory constructors have no access to this.
  factory Product(int no) {
    switch (no) {
      case 1:
        return new Product.type1();
      case 2:
        return new Product.type2(type: 2);
    }
    return new Product(1);
  }

  Product.type1() : type = 1;

  // use optional and default value
  Product.type2({this.type = 1});
}
