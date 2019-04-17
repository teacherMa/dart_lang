import 'dart:math';

abstract class Shape {
  num get area;

  factory Shape(int type) {
    switch (type) {
      case 1:
        return Circle(1);
      case 2:
        return Square(1);
      default:
        throw "Can't create $type.";
    }
  }
}

Shape shapeFactory(int type) {
  switch (type) {
    case 1:
      return Circle(1);
    case 2:
      return Square(1);
    default:
      throw "Can't create $type.";
  }
}

class Circle implements Shape {
  int radius;

  Circle(this.radius);

  @override
  num get area => pi * pow(radius, 2);
}

class CircleMock implements Circle {
  int radius;

  num area;
}

class Square implements Shape {
  int width;

  Square(this.width);

  @override
  num get area => pow(width, 2);
}

void main() {
  print(Circle(3).area);
  print(Square(3).area);

  print(shapeFactory(1));
  print(shapeFactory(2));

  print(Shape(1));
  print(Shape(2));
}
