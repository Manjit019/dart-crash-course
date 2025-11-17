void main(List<String> args) {
  //destructure
  final jsoned = {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false,
    "body":
        "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto",
  };

  // final {'userId':userId, 'title':title , 'body' : body} = jsoned;

  if (jsoned case {
    'userId': int userId,
    'title': String title,
    'body': String body,
  }) {
    print(userId);
    print(title);
    print(body);
  } else {
    print('Incorrect JSON');
  }

   // Destructuring Records:
  const record2 = ('Tom', 22);
  var (name1, age1) = record2;
  print('Name: $name1, Age: $age1');

  final nested = ('Car', (model: 'Tesla', year: 2023));
  var (type, (model: model, year: year)) = nested;
  print('Type: $type, Model: $model, Year: $year');


  final user = Human('Bittu', 21);
  // final Human(name: n, age: ae) = user;
  // print('Name: $n, Age: $ae');
  final Human( :age, :name) = user;
  print(name);
  print(age);
}


class Human {
  final String name;
  final int age;
  Human(this.name, this.age);
}