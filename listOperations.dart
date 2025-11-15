/*
  List Operations : there are various operations that can be performed on lists in Dart. Some of the most common operations include:

  1. Adding elements to a list
  2. Removing elements from a list
  3. Replacing elements in a list
  4. Sorting elements in a list
  5. Searching for elements in a list
  6. Iterating over elements in a list
  7. Mapping elements in a list
  8. Filtering elements in a list
  9. Reducing elements in a list
  10. Flattening a list
  11. Shuffling elements in a list
  12. Combining lists
  13. Splitting a list
  14. Merging lists
  15. Removing duplicates from a list
  16. Converting a list to a set
  17. Converting a list to a map

*/

final gauravStudent = Student('Gaurav',110);

void main(List<String> args) {
  List<Student> students = [
    gauravStudent,
    Student('Bittu',110),
    Student('Bikki',100),
    Student('Prabhat',125),
    Student('Ankit',80),
  ];

  // print(students);
  //1. Adding elements to a list
  // students.add(Student('Ankit'));
  // //using insert method - insert(index,element)
  // students.insert(1, Student('Vikash'));
  // print(students);

  //2. Removing elements from a list
  // students.remove(gauravStudent);
  // print(students);

  //3. Replacing elements in a list
  // students[1] = Student('Vikash Bawala');
  // print(students);

  //4. Sorting elements in a list
  // students.sort((a, b) => a.name.compareTo(b.name));
  // print(students);

  //5. Searching for elements in a list
  // print(students.contains(gauravStudent));

  //6. Iterating over elements in a list
  // for (final student in students) {
  //   print(student);
  // }
  //or
  // students.forEach((student) => print(student));
  //or
  // students.forEach(print);

  //7. Mapping elements in a list
  // final names = students.map((student) => student.name).toList();
  // print(names);
  // final marks = students.map((student) => student.marks).toList();
  // print(marks);

  //8. Filtering elements in a list
  // List<Student> filteredStudents = [];
  // for(int i=0; i<students.length; i++){
  //   if(students[i].marks > 120){
  //     filteredStudents.add(students[i]);
  //   }
  // }
  //using for in loop
  // for (final student in students) {
  //   if (student.marks > 120) {
  //     filteredStudents.add(student);
  //   }
  // }
  // print(filteredStudents);
  //or
  // final filteredStudents = students.where((student) => student.marks > 120).toList();
  // print(filteredStudents);

  //9. Reducing elements in a list
  // List<int> numbers = [20,10,5,10,15,35,10];
  // final total = numbers.reduce((value, element) => value + element);
  // print(total);
  //or
  // final totalMarks = students.fold<int>(0, (sum, student) => sum + student.marks);
  // print(totalMarks);
  

  //10. Flattening a list - means converting a list of lists into a single list of elements
  // List<List<int>> nestedList = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
  // final flattenedList = nestedList.expand((element) => element).toList();
  // print(flattenedList);
  

  //11. Shuffling elements in a list - means randomly shuffling the elements of a list
  // numbers.shuffle();
  // print(numbers);
  // final shuffledList = List<Student>.from(students)..shuffle();
  // print(shuffledList);

  //12. Combining lists - means combining two or more lists into a single list
  // List<int> numbers1 = [1, 2, 3];
  // List<int> numbers2 = [4, 5, 6];
  // final combinedList = numbers1 + numbers2;
  // print(combinedList);
  //or
  // final combinedList = [...numbers1, ...numbers2];
  // print(combinedList);
  //or
  // final combinedList = List<int>.from(numbers1)..addAll(numbers2);
  // print(combinedList);
  

  //13. Splitting a list - means splitting a list into two or more lists
  // List<int> numbers3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // without extension
  // final splitList = [numbers3.sublist(0, 5), numbers3.sublist(5)];
  // print(splitList);
  // using extension
  // final splitList = numbers3.splitAt(5);
  // print(splitList);

  //14. Reversing a list - means reversing the order of the elements in a list
  // print(numbers3.reversed.toList());
  // final reversedList = List<int>.from(numbers3)..sort((a, b) => b.compareTo(a));
  // print(reversedList);

  //15. Removing duplicates from a list - means removing the duplicate elements from a list
  // final uniqueList = List<int>.from(Set<int>.from(students.map((student) => student.marks)));
  // print(uniqueList);
  // //or
  // final uniqueList1 = List<int>.from(Set<int>.from(numbers3));
  // print(uniqueList1);

  //16. Converting a list to a set - means converting a list into a set of unique elements
  // final uniqueSet = Set<int>.from(students.map((student) => student.marks));
  // print(uniqueSet);
  // //or
  // final uniqueSet1 = Set<int>.from(numbers3);
  // print(uniqueSet1);

  //17. Converting a list to a map - means converting a list into a map of key-value pairs
  final map = Map<String, int>.fromIterable(students, key: (student) => student.name, value: (student) => student.marks);
  print(map);

}

extension SplitList<T> on List<T> { // in dart extension is used to add new functionality to existing class 
  List<List<T>> splitAt(int index) {
    return [sublist(0, index), sublist(index)];
  }
}

class Student {
  final String name;
  final int marks;

  Student(this.name,this.marks);

  @override
  String toString() => 'Student: $name';
}
