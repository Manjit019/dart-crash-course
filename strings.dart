/*
  Strings in Dart:
  ----------------
  A String in Dart is a sequence of UTF-16 code units (characters). 
  Strings are immutable, meaning once created, their contents cannot be changed.

  Key Points:
  - Strings can be created using single quotes (' ') or double quotes (" ").
  - Triple quotes (''' ''' or """ """) are used for multi-line strings.
  - Strings support interpolation using $variable or ${expression}.
  - Common operations include concatenation, substring extraction, trimming,
    splitting, and checking length.
  - Since Strings are immutable, any modification returns a new String.
*/



void main(List<String> args) {

  // Creating a string
  String name = 'Bittu Bawala';
  print(name);

  // String length
  print('Length: ${name.length}');

  // Accessing characters
  print('First char: ${name[0]}');
  print('Last char: ${name[name.length - 1]}');

  // String interpolation
  String city = 'Delhi';
  print('Hello $name from $city!');
  print('Next year you will be ${20 + 1} years old.');

  // Multi-line string
  String multi = '''
This is a multi-line
string in Dart.
''';
  print(multi);

  // Escaping characters
  String escaped = 'It\'s a sunny day';
  print(escaped);

  // Raw string (ignores escape sequences)
  String raw = r'This is a \n raw string.';
  print(raw);

  // String concatenation
  String fullName = name + ' from ' + city;
  print(fullName);

  // Contains & searching
  print(name.contains('Bittu')); // true
  print(name.startsWith('B'));   // true
  print(name.endsWith('a'));     // true
  print(name.indexOf('Bawala')); // 6

  // Changing case
  print(name.toUpperCase());
  print(name.toLowerCase());

  // Replace text
  print(name.replaceAll('Bittu', 'Raj'));

  // Splitting a string
  List<String> parts = name.split(' ');
  print(parts); // ['Bittu', 'Bawala']

  // Removing white spaces
  String messy = '   hello world   ';
  print(messy.trim());        // removes both sides
  print(messy.trimLeft());    // left side only
  print(messy.trimRight());   // right side only

  // Substring
  print(name.substring(0, 5)); // 'Bittu'

  // Checking empty / blank
  print(''.isEmpty); // true
  print(' '.isEmpty); // false (space is not empty)
  print('  '.trim().isEmpty); // true after trimming

  // Comparing strings
  print('apple' == 'apple'); // true
  print('Apple'.compareTo('Banana')); // negative => comes first

  // Repeating a string
  print(List.filled(5, '*').join()); // *****

  // Converting number to string
  int age = 20;
  print(age.toString());

  //capitalize first letter of string
  // print(name[0].toUpperCase() + name.substring(1));
  //using extension
  String motivation = 'Success is not final, failure is not fatal: it is the courage to continue that counts.';
  print(motivation.capitalizeFirst());

}

//extension : is used to add new functionality to existing class 
extension CapitalizeFirst on String {
  String capitalizeFirst(){
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}