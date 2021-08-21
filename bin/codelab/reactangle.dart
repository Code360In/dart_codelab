import 'dart:math';

class ReacAgnle {
  Point origin;
  int height;
  int width;
  ReacAgnle({
    this.height = 0,
    this.width = 0,
    this.origin = const Point(0, 0),
  });

  @override
  String toString() =>
      'ReacAgnle(origin: $origin, height: $height, width: $width)';
}

void main() {
  final reacangle = ReacAgnle(height: 40, width: 43, origin: Point(4, 3));
  final reacangle2 = ReacAgnle();

  print(reacangle);
  print(reacangle2);
}
