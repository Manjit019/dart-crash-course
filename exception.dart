/*
  Exception in dart - is an error that occurs during the execution of a program.
  Exceptions can be handled using try-catch blocks or thrown using the throw keyword.

  syntax:
  try {
    // code that may throw an exception
  } catch (e) {
    // code to handle the exception
  } finally {
    // code to execute regardless of whether an exception occurred or not
  }

  in real world projects , exceptions are used to handle errors that occur during the execution of a program. For example, if a user enters an invalid input, an exception is thrown and caught to handle the error. 

*/

void main(List<String> args) {

  print(10 ~/ 3); // ~/ is used to perform integer division, 3.33333 -> 3
  print(10 / 0);

  try { // try keyword is used to wrap code that may throw an exception
    int result = 10 ~/ 0; // this will throw an exception
    print('Result: $result');
    
  } 
  // ignore: deprecated_member_use
  on IntegerDivisionByZeroException catch (e) { // on keyword is used to catch specific exceptions
    print('$e : Cannot divide by zero!');
  } 
  catch (e) { // catch keyword is used to catch all other exceptions
    print('An Error Occured! $e' );
  } 
  finally { // finally keyword is used to execute code regardless of whether an exception occurred or not
    print('Execution completed.');
  }
  
}
