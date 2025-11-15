/*
  Modifiers in Dart are keywords that modify the visibility and accessibility of class members (variables and methods). They are used to control the scope and accessibility of the members within the class.

  Modifiers in Dart include:
  1. public: The public modifier makes a member accessible from anywhere, even outside the class.
  2. private: The private modifier restricts access to a member within the class.
  3. protected: The protected modifier restricts access to a member within the class and its subclasses.

  syntax:
  class ClassName {
    // public member
    int publicVariable = 0;

    // private member
    int _privateVariable = 0;

    // protected member
    int _protectedVariable = 0;
  }

  class SubclassName extends ClassName {
    @override
    void publicMethod() {
      // implementation of the public method
    }
  }

  sealed class - a class that cannot be inherited by other classes and can only be used as a base class for other classes in the same library or package. It is used to ensure that all subclasses of a sealed class are defined in the same library or package. 

  final class - a class that cannot be extended or inherited by other classes. It is used to define a final class that cannot be modified or extended. 

  base class - a class that is used as a base class for other classes in the same library or package. It is used to define a base class that can be extended by other classes in the same library or package.

  interface class - a class that is used as a base class for other classes in the same library or package. It is used to define a base class that can be extended by other classes in the same library or package.

  mixin class - a class that is used to add functionality to other classes in the same library or package. It is used to define a mixin class that can be included in other classes in the same library or package. 


*/

void main(List<String> args) {
  Animal animal = Cat();

  switch(animal){
    case Dog():
      print('Dog');
      break;
    case Cat():
      print('Cat');
      break;
    case Human():
      print('Human');
      break;
  }
}

sealed class Animal{}
final class Animal1{}
base class Animal2{}
interface class Animal3{}
mixin class Animal4{}


class Human implements Animal {}

class Dog implements Animal {}

class Cat implements Animal {}