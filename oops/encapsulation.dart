/*
  Encapsulation in Dart : is the principle of bundling data (variables) and methods (functions) that operate on that data into a single unit known as a class. It restricts direct access to some of an object's components, which helps to prevent unintended interference and misuse of the data. Encapsulation is a fundamental concept in object-oriented programming that promotes data hiding and abstraction.

  In Dart, encapsulation is achieved using access modifiers. By default, all class members (variables and methods) are public, meaning they can be accessed from outside the class. However, you can make a member private by prefixing its name with an underscore (_). Private members can only be accessed within the same library (file).

  syntax:
  class ClassName {
    // private variable
    int _privateVariable;

    // public method
    void publicMethod() {
      // implementation
    }

    // private method
    void _privateMethod() {
      // implementation
    }
  }

  class SubclassName extends ClassName {
    @override
    void publicMethod() {
      // implementation of the public method
    }
  }

  real world example of encapsulation : consider a class called "BankAccount" that represents a bank account. The class has private variables like "_balance" and "_accountNumber" that store sensitive information. The class provides public methods like "deposit()" and "withdraw()" to allow users to interact with the account without directly accessing the private variables. This way, the internal state of the bank account is protected from unauthorized access and modification.

  just like a real-world bank account protects its sensitive information and allows controlled access through specific operations, in programming, encapsulation helps safeguard data and ensures that it is accessed and modified in a controlled manner.

  
*/


class BankAccount {
  // private variables
  double _balance = 0.0;
  String _accountNumber;

  // constructor
  BankAccount(this._accountNumber);

  // public method to deposit money                                                                                         
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount}. New balance: \$${_balance}');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  // public method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew: \$${amount}. New balance: \$${_balance}');
    } else {
      print('Insufficient balance or invalid withdrawal amount.');
    }
  }

  // public method to get the current balance
  double getBalance() {
    return _balance;
  }
}

void main() {
  BankAccount account = BankAccount('123456789');
  account.deposit(500);
  account.withdraw(200);
  print('Current balance: \$${account.getBalance()}');
}