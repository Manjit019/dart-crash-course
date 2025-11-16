/*
  Enums in dart - enum is a data type that is used to represent a group of constant values. It is a user-defined data type that can be used to represent a finite set of values. 

  syntax:
  enum ClassName {
    value1,
    value2,
    value3,
  }

  example:
  enum Day {
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday,
  }

  In real world, enums are used to represent a group of constant values, such as days of the week, months of the year, or colors , gender etc.

*/

void main(List<String> args) {
  Employee employee = Employee('Bittu', EmploeeType.Manager);
  Employee employee2 = Employee('Bikki', EmploeeType.Designer);

  print(employee.name);
  // print(employee.type);

  print(employee2.name);
  // print(employee2.type);

  employee.printType();
  employee2.printType();

}

enum EmploeeType {
  Manager(45000),
  Developer(40000),
  Designer(38000);

  final int salary;
  const EmploeeType(this.salary);
}


class Employee {
  final String name;
  final EmploeeType type;

  Employee(this.name, this.type);

  void printType(){
    switch (type) {
      case EmploeeType.Manager:
        print('Manager and his salary is ${type.salary}');
        break;
      case EmploeeType.Developer:
        print('Developer and his salary is ${type.salary}');
        break;
      case EmploeeType.Designer:
        print('Designer and his salary is ${type.salary}');
        break;
      default:
        print('Unknown');
    }
  }
}