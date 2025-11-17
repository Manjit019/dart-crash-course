/*
  Map in dart is a data structure that is used to store key-value pairs. It is a collection of unique keys and their corresponding values. It is also called as dictionary in other programming languages.

  In dart, the Map class is a generic class that can be used to create a map of any type of object. The Map class has a number of constructors that can be used to create a map of any type of object.

  Example:
  Map<String, int> student = {'name': 'Bittu', 'age': 25, 'height': 5.9};

  In the above example, the Map class is used to create a map of strings and integers.

*/

void main(List<String> args) {
  Map<String, int> marks = {
    'Bittu': 100,
    'Bikki': 95,
    'Prabhat': 80,
    'Ankit': 70,
  };

  print(marks.runtimeType); //
  print(marks['Bittu']); // accessing value using key
  print(marks.containsKey('Bittu')); // check if key exists
  print(marks.isEmpty); // check if map is empty
  print(marks.length); // length of map

  // updating value
  marks['Bittu'] = 200;
  print(marks['Bittu']);

  //
  if (marks['Bikki'] == null) {
    print('key does not exist');
  } else {
    print(marks['Bikki']!.isEven);
  }

  //print all keys
  print(marks.keys);

  //print all values
  print(marks.values);

  // iterate over map
  for (var entry in marks.entries) {
    print('${entry.key}: ${entry.value}');
  }

  // iterate over map
  marks.forEach((key, value) {
    print('$key: $value');
  });

  // convert map to list
  List<MapEntry<String, int>> list = marks.entries.toList();
  print(list);

  // convert list to map
  Map<String, int> map = Map.fromEntries(list);
  print(map);

  // convert map to set
  Set<MapEntry<String, int>> set = marks.entries.toSet();
  print(set);

  // addding element to map
  marks['Vikash'] = 80;
  print(marks);
  //or
  final anotherMap = {'Bittu': 100, 'Bikki': 95, 'Prabhat': 80, 'Ankit': 70};
  marks.addAll(anotherMap);
  print(marks);
  //or
  for (var entry in anotherMap.entries) {
    marks[entry.key] = entry.value;
  }

  // removing element from map
  marks.remove('Bittu');
  print(marks);
  //or
  marks.removeWhere((key, value) => value == 80);
  print(marks);

  // clearing map
  // marks.clear();
  // print(marks);

  // copy map
  Map<String, int> copyMap = marks;
  print(copyMap);

  // check if map is equal to another map
  Map<String, int> anotherMap1 = {
    'Bittu': 100,
    'Bikki': 95,
    'Prabhat': 80,
    'Ankit': 70,
  };
  print(marks == anotherMap1);

  //
  Map<String, int> marksUser = {
    'Maths': 100,
    'Physics': 95,
    'Chemistry': 80,
    'Biology': 70,
  };

  List<Map<String, int>> marksList = [
    {'Maths': 100, 'Physics': 95, 'Chemistry': 80, 'Biology': 70},
    {'Maths': 90, 'Physics': 85, 'Chemistry': 75, 'Biology': 65},
    marksUser,
  ];

  marksList
      .map(
        (element) => {
          // print(element)
          element.forEach((key, value) {
            print('$key: $value');
          }),
        },
      )
      .toList();

  
}

