class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;
  Bicycle({
    required this.cadence,
    required this.gear,
  });

  int get speed => _speed;

  int applyBrake(int decrement) {
    return _speed -= decrement;
  }

  int speedUp(int increment) {
    return _speed += increment;
  }

  @override
  String toString() => 'Bicycle $_speed mph';
}

void main() {
  final bike = Bicycle(cadence: 3, gear: 5);
  print(bike.speedUp(45));
}
