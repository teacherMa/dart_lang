class Bicycle {
  int cadence;
  int _speed;

  int gear;

  Bicycle(this.cadence, this._speed, this.gear);

  // 齿轮
  int get getSpeed => _speed;

  @override
  String toString() =>
      "cadence = $cadence, speed = $getSpeed, gear = $gear";

  void applyBrake(int decrement) => _speed -= decrement;

  void speedUp(int increment) => _speed += increment;
}

void main() {
  print("Hello World");
  final bicycle = Bicycle(1, 1, 1);
  print(bicycle.toString());
}
