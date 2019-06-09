void main() {
  var callbacks = [];
  for(int i = 0; i < 3; i++) {
    // In java, you need copy i to a final variable
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
  // the console output is 0 1 2;
}