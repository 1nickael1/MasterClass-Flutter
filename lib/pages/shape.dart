import 'package:flutter/material.dart';

class Shape {
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final Color color;

  const Shape(this.width, this.height, this.borderRadius, this.color);
}

class Circle extends Shape {
  Circle(super.width, super.height, super.borderRadius, super.color);
}

class Retangle extends Shape {
  Retangle(super.width, super.height, super.borderRadius, super.color);
}
