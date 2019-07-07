void main() {}

// 和Java中不同，Dart可以为方法指定范型，不需要依靠类来实现。
T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}
