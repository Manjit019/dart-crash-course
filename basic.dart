/*
  Basics of Dart programming language
1. Variables and Data Types
2. operators
 */

void main(List<String> args) {
  // Example usages of variables and data types
  int age = 25;
  double height = 5.9;
  String name = 'Bittu';
  bool isStudent = false;
  var dynamicVar = 'I can be anything';
  const pi = 33.14;
  final currentTime = DateTime.now();
  print('Name: $name, Age: $age, Height: $height, Is Student: $isStudent');
  print('Dynamic Variable: $dynamicVar');
  print('Pi: $pi, Current Time: $currentTime');

  assert(pi != 3.14, "PI value must be 3.14");
  // Example usages of operators
  int a = 10;
  int b = 5;
  int sum = a + b;
  int difference = a - b;
  int product = a * b;
  double quotient = a / b;
  int remainder = a % b;
  print('Sum: $sum, Difference: $difference, Product: $product, Quotient: $quotient, Remainder: $remainder');

  // Example usages of type casting
  int intValue = 10;
  double doubleValue = intValue.toDouble();
  String stringValue = doubleValue.toString();
  print('Int value: $intValue, Double value: $doubleValue, String value: $stringValue');

  // Example usages of logical operators
  bool isTrue = true;
  bool isFalse = false;
  bool andResult = isTrue && isFalse;
  bool orResult = isTrue || isFalse;
  bool notResult = !isTrue;
  print('And result: $andResult, Or result: $orResult, Not result: $notResult');

  // Example usages of relational operators
  int x = 10;
  int y = 5;
  bool greaterThan = x > y;
  bool lessThan = x < y;
  bool greaterThanOrEqual = x >= y;
  bool lessThanOrEqual = x <= y;
  bool equal = x == y;
  bool notEqual = x != y;
  print('Greater than: $greaterThan, Less than: $lessThan, Greater than or equal: $greaterThanOrEqual, Less than or equal: $lessThanOrEqual, Equal: $equal, Not equal: $notEqual');

  // Example usages of assignment operators
  int z = 10;
  z += 5; // z = z + 5
  z -= 3; // z = z - 3
  z *= 2; // z = z * 2
  z ~/= 4; // z = z / 4
  z %= 3; // z = z % 3
  print('Assignment operators result: $z');

  // Example usages of increment and decrement operators
  int counter = 0;
  counter++; // counter = counter + 1
  counter--; // counter = counter - 1
  print('Increment and decrement operators result: $counter');


  // Example usages of bitwise operators
  int p = 5; // 0101 in binary
  int q = 3; // 0011 in binary
  int r = p & q; // 0001 in binary (AND)
  int s = p | q; // 0111 in binary (OR)
  int t = p ^ q; // 0110 in binary (XOR)
  int u = ~p; // 1010 in binary (NOT)
  print('Bitwise operators result: r=$r, s=$s, t=$t, u=$u');

  // Example usages of shift operators
  int v = 5; // 0101 in binary
  int w = v << 2; // 10100 in binary (left shift by 2)
  int xs = v >> 1; // 0010 in binary (right shift by 1)
  print('Shift operators result: w=$w, x=$xs');

  
  typesInDart();
}


void typesInDart() {
  // Example usages of different data types in Dart
  int integerVar = 42;
  double doubleVar = 3.14;
  String stringVar = 'Hello, Dart!';
  bool boolVar = true;
  List<int> listVar = [1, 2, 3, 4, 5];
  Map<String, int> mapVar = {'one': 1, 'two': 2, 'three': 3};
  Set<String> setVar = {'apple', 'banana', 'orange'};
  var dynamicVar = 'I can be anything';

  //null safety
  String? nullableString;
  nullableString = null; // This is allowed

  // String nonNullableString = nullableString!; // This is not allowed


  print('Integer: $integerVar');
  print('Double: $doubleVar');
  print('String: $stringVar');
  print('Boolean: $boolVar');
  print('List: $listVar');
  print('Map: $mapVar');
  print('Set: $setVar');
  print('Dynamic: $dynamicVar');
  print('Nullable String: $nullableString');
}