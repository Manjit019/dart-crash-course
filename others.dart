
void main(List<String> args) {
  List<String> listItems = ['HI',"MAN"];

  int index = 1;
  //extra additional gaurd condition using when 
  switch(listItems){
    case ['HI'|| 'HI', 'MAN' || 'Man'] when index == 1 :
      print('Hello');
      break;
    default:
      print('Default');
  }


  int page = 1;
  int lastPage = 1;

  final text = switch(lastPage){
    0 => 'Click Here',
    1 when page == lastPage => 'Click Me',
    _ => 'None'
  };

  print(text);
}