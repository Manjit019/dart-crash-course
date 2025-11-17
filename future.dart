/* 
  Future : 
 
  Asynchronous Programming : It is a programming technique that allows a program to execute multiple tasks concurrently without blocking the main thread. means a program can execute multiple tasks at the same time without waiting for one task to complete before starting another task. 
    for eg - a program can send a request to a server and receive a response without waiting for the previous request to complete.

  A Future is a promise that will resolve to a value in the future. It is a non-blocking operation that allows you to perform asynchronous operations without blocking the main thread. It is used to handle asynchronous operations, such as network requests, file operations, and database operations. 

  syntax:
  Future<T> futureName = Future.value(value);

  calling a future:
  futureName.then((value) => print(value));

  example:
  Future<String> getName() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Bittu';
  }

  getName().then((value) => print(value));

  In the above example, the getName() function returns a Future that resolves to a String value. The then() method is used to handle the value returned by the Future.


  In real world, futures are used to handle asynchronous operations in a program. For example, a future may be used to fetch data from a server or a database. 

  async & await : 
  async - is a keyword that is used to mark a function as asynchronous. It is used to handle asynchronous operations in a program.
  await - is a keyword that is used to wait for a future to resolve. It is used to handle asynchronous operations in a program.

  then & catch :
  then - is a method that is used to handle the value returned by a future. It is used to handle asynchronous operations in a program.
  catch - is a method that is used to handle the error returned by a future. It is used to handle asynchronous operations in a program.

*/

//Future<void> vs void -> Future<void> is a function that returns a Future that resolves to a void value. void is a function that returns a void value.

import 'package:http/http.dart' as http; // external package used to make http requests
import 'dart:convert'; 

void main(List<String> args) async {
  // print('Hey');
  // final result = await giveResultAfter2Seconds();
  // print('Hello');
  // print(result);
  // giveResultAfter2Seconds().then((val){
  //   print(val);
  // });
  // print("Greetings!");

  var url = Uri.http('jsonplaceholder.typicode.com', 'users');

  // http
  //     .get(url)
  //     .then((res) {
  //       print(jsonDecode(res.body)[0]['name']);
  //     })
  //     .catchError((err) {
  //       print(err);
  //     });

  try {
  final response = await http.get(url);
  print(jsonDecode(response.body)[0]['name']);

  } catch (e) {
    print('some error occured');
  }
}

Future<String> giveResultAfter2Seconds() {
  // return Future((){
  //   return 'Hiii!';
  // });
  return Future.delayed(Duration(seconds: 3), () async {
    return 'Hiii!';
  });
}
