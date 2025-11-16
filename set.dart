/*
Set is a collection of unique elements. It is unordered, meaning the order of elements is not guaranteed. It is also unindexed, meaning you cannot access elements by index. It is also mutable, meaning you can add, remove, and modify elements. 

syntax:
Set<T> setName = {element1, element2, element3};

example:
Set<int> mySet = {1, 2, 3, 4, 5};

In real world, sets are used to store unique values, such as unique IDs, unique names, or unique elements in a collection.

Operations on set:
1. Adding elements to a set
2. Removing elements from a set
3. Checking if an element is in a set
4. Iterating over elements in a set
5. Converting a set to a list
6. Converting a list to a set
7. Combining sets
8. Splitting a set
9. Converting a set to a map
10. Converting a map to a set
*/


void main(List<String> args) {
  Set<String> mySet = {'apple', 'banana', 'orange'};
  print(mySet.runtimeType);
  print(mySet.length);
  print(mySet);

  //1. Adding elements to a set
  mySet.add('grape');
  print(mySet);

  //2. Removing elements from a set
  mySet.remove('banana');
  print(mySet);

  //3. Checking if an element is in a set
  print(mySet.contains('apple'));

  //4. Iterating over elements in a set
  for (String fruit in mySet) {
    print(fruit);
  }

  //5. Converting a set to a list
  List<String> mySetToList = mySet.toList();
  print(mySetToList);

  //6. Converting a list to a set
  Set<String> myListToSet = mySetToList.toSet();
  print(myListToSet);

  //7. Combining sets
  Set<String> anotherSet = {'mango','gauva'};
  Set<String> combinedSet = mySet.union(anotherSet);
  print(combinedSet);

  //8. Splitting a set
  // There is no split() on Set; create a new set without 'apple' instead
  Set<String> splittedSet = mySet.where((s) => s != 'apple').toSet();
  print(splittedSet);

  //9. Converting a set to a map
  Map<String, int> mySetToMap = Map.fromEntries(mySet.map((s) => MapEntry(s, s.length)));
  print(mySetToMap); 

  //10. Converting a map to a set
  Set<String> myMapToSet = mySetToMap.keys.toSet();
  print(myMapToSet);

  //11.others
  Set<String> mySet1 = {'apple', 'banana', 'orange'};
  print(mySet1.elementAt(2)); // Access element at index 2
  print(mySet1.first); // Access first element
  print(mySet1.last); // Access last element
  print(mySet1.join(', ')); // Join elements with a separator
  Set<String> mySet2 = {'apple', 'banana', 'grape'}; 
  print(mySet1.intersection(mySet2)); // Intersection of two sets, means common elements
  print(mySet1.difference(mySet2)); // Difference of two sets, means elements in mySet1 but not in mySet2
  print(mySet1.union(mySet2)); // Union of two sets , means all elements in mySet1 and mySet2
  print(mySet1.contains('apple')); // Check if an element is in a set
  print(mySet1.containsAll(mySet2)); // Check if all elements are in a set
}