/*
  List in Dart :
    - List is a collection of elements of the same type.
    - List can be created using the List constructor.
    - List can be created using the List.filled constructor.
    - List can be created using the List.generate constructor.
    - List can be created using the List.of constructor.
    - List can be created using the List.unmodifiable constructor.
    - List can be created using the List.from constructor.

  In Dart, the List class is a generic class that can be used to create a list of any type of object. The List class has a number of constructors that can be used to create a list of any type of object.

  Example:
  List<int> numbers = [1, 2, 3, 4, 5];

  In the above example, the List class is used to create a list of integers.


*/

void main(List<String> args) {
  // List list = [10,20,30,'Hello',false,null]; // it is dynamic list, we can add any type of data in list

  // //list with types
  // List<int> numbers = [1, 2, 3, 4, 5];
  // List<String> names = ['Alice', 'Bob', 'Charlie'];
  // List<Object> list = [10, 20, 30, 'Hello', false]; // list with Object type,here we can't add any null value in list

  // print(list[0]);

  // print(list[3]);
  // print(list[4]);

  // print(numbers[3]);
  // print(names[2]);

  // final student = Student(30);
  // final student = Student<String>('Bittu');
  // print(student.name);

  // student.setName('Bittu Bawala');

  List<Student> students = [
  // List students = [
    Student('Bittu'),
    Student('Bittu Bawala'),
    Student('Bittu Baiman'),
    Student('Bittu Bypass'),
    // 'Strings',
    // 4,
    // false
  ];

  print(students);
  students[2] = Student('New Student');
  print(students);

  // final student = students[6];

  // if (student is Student) {
  //   print(student.name);
  // } else {
  //   print(student);
  // }
}

/*generic in dart is a way to create a class that can be used with any type of object.

  syntax:
  class ClassName<T> {
    // class body
  }
  here T is a type parameter that can be used to specify the type of the object that the class can be used with.


*/
/* class Student<T> {
  final T name;

  Student(this.name);

  void setName(T name) {
    print('New Name : $name');
  }
}
*/

class Student {
  final String name;
  Student(this.name);

  @override
  String toString() => 'Student: $name';

}
