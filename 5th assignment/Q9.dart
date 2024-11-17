import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }
}

void main() {
  Circle myCircle = Circle(5.0);
  print("The area of the circle is: ${myCircle.calculateArea()}");

  Rectangle myRectangle = Rectangle(10.0, 5.0);
  print("The area of the rectangle is: ${myRectangle.calculateArea()}");
}
