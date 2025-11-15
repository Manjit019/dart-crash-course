/* 
Abstract classes in Dart : are classes that cannot be instantiated directly. They are meant to be extended by other classes. An abstract class can contain abstract methods (methods without implementation) as well as concrete methods (methods with implementation). Subclasses that extend an abstract class must provide implementations for all abstract methods.

  syntax:
  abstract class AbstractClassName {
    // abstract methods
    void abstractMethod();

    // concrete methods
    void concreteMethod() {
      // implementation
    }
  }

  class SubclassName extends AbstractClassName {
    @override
    void abstractMethod() {
      // implementation of the abstract method
    }
  }


*/

//example of concrete class implementing another concrete class and an abstract class
class OtherClass {
  bool isFilled = false;
  double borderWidth = 1.0;
}

class Shape {
  void draw() {
    print('Drawing a shape.');
  }
}

class Circle extends OtherClass implements Shape {
  @override
  bool isFilled = true;
  @override
  double borderWidth = 2.0;

  @override
  void draw() {
    print('Drawing a circle.');
  }
}

class Square extends OtherClass implements Shape {
  @override
  bool isFilled = true;
  @override
  double borderWidth = 3.0;

  @override
  void draw() {
    print('Drawing a square.');
  }
}

void main() {
  // Shape shape = Circle();
  // shape.draw(); // Output: Drawing a circle.

  // final square = Square();
  // square.draw(); // Output: Drawing a square.

  final dog = Dog();
  dog.makeSound(); // Output: Woof!
  print(dog.numberOfLegs);
  print(dog.isAlive);

  final cat = Cat();
  cat.makeSound(); // Output: Meow!
  print(cat.isAlive);
  print(cat.numberOfLegs);

}

//abstract class example 
abstract class Animal {
  bool isAlive = true;
  int numberOfLegs = 4;
  void makeSound(); // Abstract method
}

class Dog implements Animal {
  @override
  bool isAlive = false;
  @override
  int numberOfLegs = 4;

  @override
  void makeSound() {
    print('Woof! ${isAlive ? "I am alive!" : "I am not alive."}');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}