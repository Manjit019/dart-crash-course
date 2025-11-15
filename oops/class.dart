/*
  here we'll learn about dart classes

    classes : 
    A class is a blueprint for creating objects, which are instances of a class. It defines the properties (fields) and methods (functions) that objects of that class will have.   

  object is an instance of a class, created using the `new` keyword or by calling the class constructor directly.
  Classes in Dart are defined using the `class` keyword, followed by the class name and a block of code that defines the class's properties and methods. The general syntax for defining a class in Dart is as follows:

  syntax:
  class className {
    // class body
  }

  
*/

void main() {
  // creating an object of the Car class
  // print('${Car().color} ');

  // final myCar1 = Car();

  // final isRunning = myCar1.isMoving();
  // print('Is the car moving? $isRunning');

  // myCar1.speed = 30.0;

  // final isRunning1 = myCar1.isMoving();
  // print('Is the car moving? $isRunning1');

  // Car myCar = new  Car();

  // myCar.accelerate(50.0);

  //with constructor
  // Car myCar2 = Car('Blue', 20.0);

  // print('Car color: ${myCar2.color}');
  // print('Car speed: ${myCar2.speed} km/h');

  //with named parameters constructor
  Car myCar2 = new Car(color: 'Blue', speed: 20.0);

  print('Car color: ${myCar2.color}');
  print('Car speed: ${myCar2.speed} km/h');
  print(myCar2._privateVariable);
  print(myCar2._perKmRate);
  print('Fare for 10 km: ₹${myCar2.calculateFare(10)}');

  //with named constructor
  // Car myCar3 = Car.withoutSpeed('Green');

  // print('Car color: ${myCar3.color}');
  // print('Car speed: ${myCar3.speed} km/h');

  // accessing private variable using getter
  print('Private Variable: ${myCar2.privateVariable}');
  // modifying private variable using setter
  myCar2.privateVariable = 100;
  print('Modified Private Variable: ${myCar2.privateVariable}');

  // accessing static variable
  print('Vehicle Type: ${Car.vehicleType}');
  // calling static method
  double speed = Car.calculateSpeed(100, 2);
  print('Calculated Speed: $speed km/h');
}

class Car {
  // String color ;
  // double speed;
  // //constructor
  // Car(this.color, [this.speed = 0.0]){
  //   print('Hello from constructor');
  //   print('Car created with color $color and speed $speed km/h');
  //   accelerate(10);
  // }

  // String? color = 'Red';
  // double? speed;

  final String? color;
  double? speed;

  //constructor with named parameters
  // Car(String color, double speed) {
  //   print(this.color);
  //   this.color = color;
  //   this.speed = speed;
  // }

  Car({required this.color, this.speed = 0.0}) {
    print('Hello from constructor with named parameters');
    accelerate(10);
  }

  // //named constructor
  // Car.withoutSpeed(String color) {
  //   this.color = color;
  //   this.speed = 0.0;
  // }

  // variables
  // String color = 'Red';
  // double speed = 0.0;

  //private variable
  int _privateVariable = 42;
  int _baseFare = 5;
  int _perKmRate = 2;

  //method
  int calculateFare(int distanceInKm) {
    return _baseFare + (_perKmRate * distanceInKm);
  }

  //getter and setter
  int get privateVariable => _privateVariable;
  set privateVariable(int value) => _privateVariable = value;

  //static function - it belongs to the class rather than any object. It can be called without creating an object
  static double calculateSpeed(int distanceInKm, int timeInHours) {
    return distanceInKm / timeInHours;
  }

  //static variable - it belongs to the class rather than any object. It can be accessed without creating an object
  static const String vehicleType = 'Car';

  // method to accelerate the car
  void accelerate(double increment) {
    speed = (speed ?? 0) + increment;
    print('Car accelerated to $speed km/h');
  }

  bool isMoving() {
    return speed! > 0;
  }
}
