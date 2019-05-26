import 'package:bicycle/src/shape.dart';

class ListPrint {
  void printList() {
    List list = new List();
    list.add(1);
    list.add(" ");
    list.add(new Shape(1));
    print(list);
    print(list.length);

    var fruit = new List<String>(2);
    fruit[0] = "1";
    fruit[1] = "1";

    print(fruit);

    Set set = new Set();
    set.add(SameHash(1));
    set.add(SameHash(2));
    set.add(SameHash(3));
    set.add("v ");

    var set1 = Set();
    set1.addAll(["1", "2", "3"]);

    var set2 = Set();
    set2.addAll(["1", "2", "3"]);

    print(set2.intersection(set1));

    print(set);

    void print2() {

    }
  }
}

class SameHash {
  @override
  int get hashCode => 0;

  int hash;

  SameHash(int hashCode) {
    hash = hashCode;
  }

  @override
  String toString() {
    // TODO: implement toString
    return hash.toString();
  }

  @override
  bool operator ==(other) {
    return toString() == (other);
  }
}

void main() {
  new ListPrint().printList();
}
