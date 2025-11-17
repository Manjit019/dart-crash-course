/*
Control Statements in Dart : is a statement that controls the flow of execution in a program. It allows you to perform different actions based on certain conditions. 

There are different types of control statements in Dart programming language. Some of the most common types include:
1. if-else statement - used to execute a block of code if a certain condition is true and another block of code if the condition is false
2. switch-case statement - used to execute a block of code based on the value of a variable or expression.
3. for loop and various for loop types - used to iterate over a sequence of values and execute a block of code for each value in the sequence.
4. while loop - used to execute a block of code as long as a certain condition is true or until a certain condition becomes false.
5. do-while loop - used to execute a block of code at least once and then repeat it as long as a certain condition is true. 
6. break statement - used to exit a loop or switch-case statement.
7. continue statement - used to skip the current iteration of a loop.
8. try-catch-finally statement - used to handle exceptions that may occur during the execution of a program.
10. return statement - used to exit a function and return a value to the caller.
11. throw statement - used to throw an exception in a function.
12. yield statement - used to return a value from a generator function.
13. labeled statements - used to label a statement in a loop or switch-case statement.
14. conditional (ternary) operator - used to execute a block of code if a certain condition is true or another block of code if the condition is false.
15. null-aware operators - used to access a property or method of an object that may be null. 
17. collection if and for - used to iterate over a sequence of values and execute a block of code for each value in the sequence. 
*/

void main(List<String> args) {
  // Example usages of control statements
  checkAge(21, 'Bittu');
  checkDay(3);
  printNumbers(5);
  printNames(['Alice', 'Bob', 'Charlie']);
  printNamesForEach(['Dave', 'Eve', 'Frank']);
  printNamesForEachArrow(['Grace', 'Heidi', 'Ivan']);
  countdown(5);
  countup(5);
  findNumber([1, 2, 3, 4, 5], 3);
  printEvenNumbers(10);
  divideNumbers(10, 0);
  print('Square of 4: ${square(4)}');
  try {
    checkPositive(-1);
  } catch (e) {
    print(e);
  }
  var numbers = generateNumbers(5);
  for (var number in numbers) {
    print(number);
  }
  labeledBreakExample();
  checkNumber(7);
  printLength(null);
  printFilteredNames(['Alice', null, 'Bob', 'Charlie', null]);
  printName(21, true, name: 'Bittu', greet: () => print('Hello Bittu!'));

}


//1. if-else statement
void checkAge(int age, String name) {
  if (age >= 18) {
    print('$name is an adult.');
  } else {
    print('$name is not an adult.');
  }
}

//2. switch-case statement

void checkDay(int day) {
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2 when day == 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4 when day == 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }
}

//3. for loop
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

//for-in loop
void printNames(List<String> names) {
  for (var name in names) {
    print(name);
  }
}

//forEach loop
void printNamesForEach(List<String> names) {
  names.forEach((name) {
    print(name);
  });
}

//forEach with arrow function
void printNamesForEachArrow(List<String> names) {
  names.forEach((name) => print(name));
}

//4. while loop
void countdown(int n) {
  while (n > 0) {
    print(n);
    n--;
  }
}

//5. do-while loop
void countup(int n) {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= n);
}

//6. break statement
void findNumber(List<int> numbers, int target) {
  for (var number in numbers) {
    if (number == target) {
      print('Found $target');
      break;
    }
  }
}

//7. continue statement
void printEvenNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      continue;
    }
    print(i);
  }
}

//8. try-catch-finally statement
void divideNumbers(int a, int b) {
  try {
    double result = a / b;
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Execution completed.');
  }
}

//10. return statement
int square(int n) {
  return n * n;
}

//11. throw statement
void checkPositive(int n) {
  if (n < 0) {
    throw ArgumentError('Negative number: $n');
  }
  print('$n is positive.');
}

//12. yield statement
Iterable<int> generateNumbers(int n) sync* {
  for (int i = 1; i <= n; i++) {
    yield i;
  }
}

//13. labeled statements
void labeledBreakExample() {
  outerLoop:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        break outerLoop;
      }
      print('i: $i, j: $j');
    }
  }
}

//14. conditional (ternary) operator
void checkNumber(int n) {
  String result = (n % 2 == 0) ? 'Even' : 'Odd';
  print('$n is $result.');
}

//15. null-aware operators
void printLength(String? str) {
  int length = str?.length ?? 0;
  print('Length: $length');
}
//17. collection if and for
void printFilteredNames(List<String?> names) {
  var filteredNames = [
    for (var name in names)
      if (name != null) name
  ];
  print(filteredNames);
}

//18. other examples
void printName(int age,bool isAdult,{required String name, required greet}){
  print(name);
  if(isAdult){
    print('$name is an adult of age $age.');
  } else{
    print('$name is not an adult and is $age years old.');
  }
  greet();
}