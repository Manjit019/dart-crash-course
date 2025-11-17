/*
 Functions in Dart : 
 A function is a block of code that performs a specific task. It can accept input parameters and return a value, or it can perform a side effect, such as printing to the console or modifying a variable.

syntax:
<return_type> <function_name>(<parameters>){
  // function body
  return <return_value>;
} 

calling a function:
<function_name>(<arguments>);

there are different types of functions in dart , which we will covered:

1. single line function
2. multi line function
3. function with parameters
4. function with return type
5. optional parameters
6. named parameters
7. anonymous functions
8. arrow functions
9. recursive functions
10. closure functions
11. nullable functions
12. other functions


In real world, functions are used to perform specific tasks in a program. For example, a function may be used to calculate the area of a rectangle or to convert a temperature from Celsius to Fahrenheit. and many more...

*/

void main(List<String> args) {
  // Example usages of the functions defined below
  print(greetUser('Bittu'));
  print(greetUserMultiLine('Bittu'));
  print('Sum: ${add(5, 10)}');
  print(isAdult(21) ? 'Can vote' : 'Cannot vote');
  print(greetUserOptional('Bittu'));
  print(greetUserNamed(name: 'Bittu', title: 'Mr.'));
  executeFunction(() => print('Anonymous function executed'));
  print('Multiply: ${multiply(4, 5)}');
  print('Factorial: ${factorial(5)}');
  var addByTwo = makeAdder(2);
  print('Add by two: ${addByTwo(3)}');


  nullableFunction = (int x) => x * 2;

  if (nullableFunction != null) {
    print('Nullable function result: ${nullableFunction!(5)}');
  }

  printName(21, true, name: 'Bittu', greet: greetUser('Bittu'));

  // final result = printStuff();
  // print('Age: ${result.$1}, Name: ${result.$2}');
  // final (age, name) = printStuff();
  // print('Age: $age, Name: $name');
  final result = printStuff();
  print('Age: ${result.age}, Name: ${result.name}');


  final returnedFunction = printThings();
  returnedFunction();

  (){
    print('Hello from anonymous function in main');
  }();

}


//different types of functions 
/*
  single line function
  multi line function
  function with parameters
  function with return type
  optional parameters
  named parameters
  anonymous functions
  arrow functions
  recursive functions
  closure functions
  nullable functions
  other advanced function types
*/

//1 single line function
String greetUser(String name) => 'Welcome $name';

//2 multi line function
String? greetUserMultiLine(String name) {
  // return 'Welcome $name';
}

//3 function with parameters
int add(int a, int b) {
  return a + b;
}

//4 function with return type
bool isAdult(int age) {
  return age >= 18;
}

//5 optional parameters
String greetUserOptional(String name, [String? title]) {
  if (title != null) {
    return 'Welcome $title $name';
  }
  return 'Welcome $name';
}

//6 named parameters
String greetUserNamed({required String name, String? title}) {
  if (title != null) {
    return 'Welcome $title $name';
  }
  return 'Welcome $name';
}

//7 anonymous functions
void executeFunction(Function func) {
  func();
}
//8 arrow functions
int multiply(int a, int b) => a * b;

//9 recursive functions
int factorial(int n) {
  if (n <= 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

//10 closure functions
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

//11 nullable functions

int? Function(int)? nullableFunction;

//12 other 

void printName(int age,bool isAdult,{required String name, required greet}){
  print(name);
  print(age);
  print(isAdult);
  print(greet);
}


//function with multiple return types using Tuple
// (int,String) printStuff(){
//   return (1,'Bittu');
// }

//function with multiple return types using Record (Dart 3 feature) -named return values
({int? age, String name}) printStuff(){
  return (name : 'Bittu', age : 21);
}


Function printThings(){
  return (){
    print('Hello from returned function');
  };
}