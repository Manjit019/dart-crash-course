/*
    Records in Dart
    ----------------
    A Record in Dart is a lightweight, immutable data structure used to group 
    multiple values together without needing to create a class. Records were 
    introduced in Dart 3 to make returning or storing multiple values easier.

    Records are useful when:
    - You want to return multiple values from a function.
    - You need a quick container for related values.
    - Creating a class would be unnecessary or overkill.

    Basic Syntax:
    -------------
    <Type> recordName = (field1: value1, field2: value2, ...);

    eg : 
    // A simple record:
    var person = ('John', 25);

    // A record with named fields:
    var user = (name: 'Alice', age: 30);

    When to Use Records:
    ---------------------
    ✓ Returning multiple values from functions  
    ✓ Passing grouped values without creating a class  
    ✓ Lightweight data grouping  
    ✓ Pattern matching (Dart 3 feature)

    When Not to Use Records:
    -------------------------
    ✗ When you need methods  
    ✗ When you need mutable data  
    ✗ When you need a complex model → Use a class instead  

*/

void main(List<String> args) {
  var person = ('John', 25); //positional fields
  var user = (name: 'Alice', age: 30); // named fields

  print('Name: ${person.$1}, Age: ${person.$1}');
  print('Name: ${user.name}, Age: ${user.age}');

  //nullable
  (double, int)? val = (1.0, 2);
  print(val);

  val = null;
  print(val);

  //equlality check
  ({int x, int y, int z}) point1 = (x : 1, y : 2, z : 3);
  ({int x, int y, int z}) point2 = (x : 1, y : 2, z : 3);
  print(point1 == point2);

  //rest example
  final list = [1,2,3, 4,5 ,6,7,8,9];
  final [a,_,c, ...rest] = list;// `a` = first, `_` = ignore second, `c` = third, `...rest` = remaining elements

  print(a);
  print(c);
  print(rest);
  

  (int sum, int diff) calculate(int a, int b) {
    return (a + b, a - b);
  }

  final result = calculate(10, 4);

  var (sum, diff) = result;
  print('Sum: ${sum}, Difference: ${diff}');

  // Destructuring Records:
  const record2 = ('Tom', 22);

  var (name, age) = record2;
  print('Name: $name, Age: $age');

  // Named destructuring:
  var (name: n, age: ag) = (name: 'Leo', age: 20);
  print('Name: $n, Age: $ag');

  // Nesting Records:
  final nested = ('Car', (model: 'Tesla', year: 2023));

  var (type, (model: model, year: year)) = nested;
  print('Type: $type, Model: $model, Year: $year');


  
}
