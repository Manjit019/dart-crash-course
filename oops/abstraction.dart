/*
  Abstraction in dart is a fundamental object-oriented programming concept that focuses on exposing only the essential features of an object while hiding the complex implementation details. This allows developers to work with higher-level concepts without needing to understand the intricacies of how they are implemented.

  In Dart, abstraction can be achieved using abstract classes and interfaces. An abstract class is a class that cannot be instantiated directly and is meant to be extended by other classes. It can contain abstract methods (methods without implementation) as well as concrete methods (methods with implementation). Subclasses that extend an abstract class must provide implementations for all abstract methods.

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

  real world example of abstraction : consider a scenario where you have a complex system for managing different types of vehicles (cars, bikes, trucks). You can create an abstract class called "Vehicle" that defines common properties and methods like "startEngine()", "stopEngine()", and "getFuelEfficiency()". Each specific vehicle type (Car, Bike, Truck) can extend the "Vehicle" class and provide their own implementations for these methods. This way, users of the vehicle system can interact with the "Vehicle" interface without needing to understand the specific details of how each vehicle type operates.

  a person driving a car does not need to know the intricate details of how the engine works; they just need to know how to operate the car using the provided controls. Similarly, in programming, abstraction allows developers to interact with objects at a higher level without delving into their complex implementations.
*/


abstract class Vehicle {
  void startEngine();
  void stopEngine();
  double getFuelEfficiency();
}

class Car extends Vehicle {
  @override
  void startEngine() {
    print('Car engine started.');
  }

  @override
  void stopEngine() {
    print('Car engine stopped.');
  }

  @override
  double getFuelEfficiency() {
    return 25.0; // miles per gallon
  }
}

class Bike extends Vehicle {
  @override
  void startEngine() {
    print('Bike engine started.');
  }

  @override
  void stopEngine() {
    print('Bike engine stopped.');
  }

  @override
  double getFuelEfficiency() {
    return 50.0; // miles per gallon
  }
}

void main() {
  Car car = Car();
  car.startEngine();
  car.stopEngine();
  final fuelEfficiency = car.getFuelEfficiency();
  print('Fuel efficiency: $fuelEfficiency miles per gallon');

  Bike bike = Bike();
  bike.startEngine();
  bike.stopEngine();
  final bikeFuelEfficiency = bike.getFuelEfficiency();
  print('Fuel efficiency: $bikeFuelEfficiency miles per gallon');
}