/*
  mixin in dart is a way to reuse a class's code in multiple class hierarchies. Mixins are a powerful feature that allows you to compose classes from reusable components without using inheritance. This helps to avoid the limitations of single inheritance and promotes code reuse.

  In Dart, a mixin is defined using the "mixin" keyword followed by the mixin name. A class can then use the "with" keyword to include one or more mixins. Mixins can contain methods and properties that can be shared across different classes.

  syntax:
  mixin MixinName {
    // mixin code
  }

  class ClassName with MixinName {
    // class code
  }

  class SubclassName extends ClassName {
    // subclass code
  }

  real world example of mixins : consider a scenario where you have multiple classes representing different types of vehicles (Car, Bike, Truck). Each vehicle type may have common functionalities like "startEngine()", "stopEngine()", and "honk()". Instead of duplicating this code in each vehicle class, you can create a mixin called "VehicleMixin" that contains these common methods. Then, each vehicle class can use the "with" keyword to include the "VehicleMixin", allowing them to share the same functionality without code duplication.

  just like a Swiss Army knife combines multiple tools into one compact device, mixins allow you to combine multiple functionalities into a single class without the constraints of traditional inheritance.


*/

void main(List<String> args) {
  final car = Car();
  car.startEngine();
  car.honk();
  car.drive();
  car.stopEngine();
  print(car.noOfWheels);
  car.move();
}

mixin MovableMixin {
  void move() {
    print('Moving...');
  }
}

mixin VehicleMixin {
  int noOfWheels = 2;

  void startEngine() {
    print('Engine started.');
  }

  void stopEngine() {
    print('Engine stopped.');
  }

  void honk() {
    print('Honk! Honk!');
  }
}

class Car with VehicleMixin, MovableMixin {
   
  int noOfWheels = 4;
  void drive() {
    print('Driving a car.');
  }
}


