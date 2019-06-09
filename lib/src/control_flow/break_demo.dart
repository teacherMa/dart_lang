void main() {
  for (int i = 0; i < 3; i++) {
    for (int i = 0; i < 3; i++) {
      if (i == 2) {
        // you can only break the inner loop as in Java/C/C++
        break;
      }
      print(i);
    }
  }
}
