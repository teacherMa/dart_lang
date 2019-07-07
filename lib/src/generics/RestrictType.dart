void main() {}

class A {}

// Dart 中不支持 <T super A> 来规定下界
class B<T extends A> {}
