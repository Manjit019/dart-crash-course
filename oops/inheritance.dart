/*
    Object-Oriented Programming (OOP) : 
    Object-Oriented Programming (OOP) is a programming paradigm that uses "objects" to represent data and methods to manipulate that data. OOP focuses on the concepts of encapsulation, inheritance, polymorphism, and abstraction to create modular and reusable code.

    four main principles of OOP are:
    1. Encapsulation: Bundling data and methods that operate on that data within a single unit (class) and restricting access to some of the object's components.
    2. Inheritance: A mechanism that allows a new class (subclass) to inherit properties and behaviors (methods) from an existing class (superclass).
    3. Polymorphism: The ability of different classes to be treated as instances of the same class through a common interface, allowing for methods to be used in different ways based on the object that invokes them.
    4. Abstraction: The process of simplifying complex systems by modeling classes based on the essential properties and behaviors an object should have, while hiding unnecessary details.


    Inheritance : 
    Inheritance is a fundamental concept in object-oriented programming (OOP) that allows a class to inherit properties and behaviors (methods) from another class. The class that inherits is called the subclass or derived class, and the class being inherited from is called the superclass or base class.

    In Dart, inheritance is implemented using the `extends` keyword. A subclass can extend a superclass to gain access to its properties and methods, allowing for code reuse and the creation of hierarchical relationships between classes.

    types : 
    1. Single Inheritance: A subclass inherits from a single superclass.
    2. Multilevel Inheritance: A subclass inherits from a superclass, which in turn inherits from another superclass.
    3. Hierarchical Inheritance: Multiple subclasses inherit from a single superclass.
    Note: Dart does not support multiple inheritance directly (i.e., a class cannot inherit from more than one class). However, Dart provides mixins as a way to achieve similar functionality.

    syntax:
    class Superclass {
        // properties and methods of the superclass
    }

    class Subclass extends Superclass {
        // additional properties and methods of the subclass
    }

    

*/

class Animal {

    bool isAlive = true;
    double weight = 0.0;
    int age = 0;
  void eat() {
    print('The animal is eating.');
  }

  void sleep() {
    print('The animal is sleeping.');
  }

  void move() {
    print('The animal is moving.');
  }
}

class Dog extends Animal {

    String breed = 'Unknown';

    void bark() {
        print('The dog is barking.');
    }
}


void main(List<String> args) {
    // Dog dog =  Dog();
    Animal dog =  Dog(); // Upcasting


    // dog.breed  = 'Golden Retriever';
    (dog as Dog).breed = 'Golden Retriever'; // Downcasting
    dog.weight = 30.0;
    dog.age = 3;

    // print('Breed: ${dog.breed}');
    // print('Weight: ${dog.weight} kg');  
    // print('Age: ${dog.age} years');

    // dog.bark();
    // dog.eat();
    // dog.sleep();
    // dog.move();

     final car = Car();

    //  print(car.isEngineOn);
    //  print(car.speed);
    //  print(car.noOfWheels);

    //  car.accelerate();
     print(car.accelerate());
     

    //  Truck truck = Truck();
    //  print(truck.noOfWheels);
    //  print(truck.isEngineOn);
    //  truck.speed = 60;
    //  truck.loadCargo(500);
    //  print(truck.speed);
}


//multiple inheritance is not supported in dart
// class Cat extends Animal, Pet { // This will cause an error


//2.multilevel inheritance

class someClas {
    int speed = 10;

    void accelerate() {
        speed += 30;
        print('The vehicle is accelerating. New speed: $speed km/h');
    }
}

class Vehicle extends someClas {
  String? color;
  bool isEngineOn = false;
  bool isLightOn = true;

  @override // Overriding the accelerate() method : the super keyword is used to call the parent class method 
  int accelerate() {
    speed += 10;
    return speed;
  }
}

class Car extends Vehicle {
  int noOfWheels = 4;

  void honk() {
    print('The car is honking its horn.');
  }
}


//3.hierarchical inheritance - multiple subclasses inherit from a single superclass
class Truck extends Vehicle {
  double loadCapacity = 430.0;

  int noOfWheels = 8;

  void loadCargo(double weight) {
    loadCapacity += weight;
    print('Loaded $weight kg of cargo. Total load capacity: $loadCapacity kg');
  }
}






