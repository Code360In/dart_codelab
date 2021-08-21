import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(5);
    if (type == 'square') return Square(5);
    throw 'Can\'t create $type';
  }

  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  @override
  num get area => pow(side, 2);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(5);
  if (type == 'square') return Square(5);
  throw 'Can\'t create $type';
}

class CircleMock implements Circle {
  @override
  num get area => throw UnimplementedError();

  @override
  num get radius => throw UnimplementedError();
  // num area = 0;
  // num radius = 0;
}

void main() {
  final circle = Circle(4);
  final square = Square(6);
  final circles = shapeFactory('circle');
  final squares = shapeFactory('square');

  print(circle.area);
  print(square.area);

  print('${squares.area}  : ${circles.area}');
}
