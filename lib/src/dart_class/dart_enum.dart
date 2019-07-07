// 枚举所具有的默认值从0开始，可以通过.index来取得默认值
enum Color { red, blue, black, pink, yellow }

void main() {
  List<Color> colors = Color.values;
  TestEnum p = new TestEnum();
  colors.forEach(p.printColor);
  colors.forEach(p.printColorIndex);
}

class TestEnum {
  void printColor(Color c) {
    print(c);
  }

  void printColorIndex(Color c) {
    print(c.index);
  }

  void switchColor(Color c) {
    switch (c.index) {
      case 1:
        break;
      default:
        break;
    }

    switch (c) {
      case Color.black:
        break;
      default:
        break;
    }
  }
}
