/*
  OOPS : Polymorphism in Dart
  Polymorphism is a core concept in object-oriented programming that allows objects of different classes to be treated as objects of a common superclass. It enables a single interface to represent different underlying forms (data types). In Dart, polymorphism is primarily achieved through method overriding and interfaces.

  There are two main types of polymorphism in Dart:
  1. Compile-time Polymorphism (Method Overloading): Dart does not support method overloading directly. However, you can achieve similar functionality using optional parameters (both positional and named) in methods.

  2. Run-time Polymorphism (Method Overriding): Method overriding allows a subclass to provide a specific implementation of a method that is already defined in its superclass. This is the most common form of polymorphism in Dart.  

  real world example of polymorphism : consider a superclass called "Shape" with a method "draw()". Different subclasses like "Circle","Square", and "Triangle" can override the "draw()" method to provide their specific implementations.When you call the "draw()" method on a "Shape" reference, the appropriate subclass method is invoked based on the actual object type at runtime.

  just like a person can take on many forms (a student, a teacher, an employee) and perform actions specific to each role, in programming, polymorphism allows objects to behave differently based on their actual class type while sharing a common interface.

  syntax:
  class Superclass {
    void display() {
      print('Display from Superclass');
    }
  }

  class Subclass extends Superclass {
    @override
    void display() {
      print('Display from Subclass');
    }   
  }
*/

void main() {
  Shape shape1 = Circle();
  shape1.draw(); // Output: Drawing a circle.

  Shape shape2 = Square();
  shape2.draw(); // Output: Drawing a square.

  Shape shape3 = Triangle();
  shape3.draw(); // Output: Drawing a triangle.
}

class Shape {
  void draw() {
    print('Drawing a shape.');
  }
}
class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle.');
  }
}
class Square extends Shape {
  @override
  void draw() {
    print('Drawing a square.');
  }
}
class Triangle extends Shape {
  @override
  void draw() {
    print('Drawing a triangle.');
  }
}