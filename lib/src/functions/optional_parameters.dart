import 'package:meta/meta.dart';

void main() {
  OptionalParameter op = new OptionalParameter();
  op.optional(1, num: 1);

  op.say('lypeer', 'eat', '');
  op.optionalWithCollections();
}

class OptionalParameter {
  // only OptionParameter can use default value
  // The default values must be compile-time constants

  // optional name parameters
  void optional(int year, {int age = 10, @required int num}) {
    print("year = $year, age = $age, num = $num");
  }

  void optionalWithCollections({List<String> inList = const ["a", "b"]}) {
    print(inList);
  }

  // optional positional parameters
  void say(String people, String say,
      [String what, String when = "2019/06/01"]) {
    print("$people say $say use $what in $when");
  }
}
