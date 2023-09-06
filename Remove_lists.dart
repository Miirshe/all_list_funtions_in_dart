import 'dart:io';

List fruits = ['banana', 'limon', 'orange', 'apple'];
void main() {
  bool bool_value = true;
  print('Choose Clear || remove');
  String optional_value = stdin.readLineSync().toString();
  if (optional_value.toLowerCase() == 'clear') {
    clear_data(fruits);
  } else if (optional_value.toLowerCase() == 'remove') {
    print('Remove Data From Lists ? ');
    String input = stdin.readLineSync().toString();
    remove_single_data(input);
  }else{
    print('you only have two options remove or clear');
  }
}

void remove_single_data(String values) {
  String? remove_value;
  for (var element in fruits) {
    if (element == values) {
      remove_value = element;
    } else {
      print('not valid yet');
    }
  }
  print('Removed : ${fruits.remove(remove_value)}');
  print('Fruits : ${fruits}');
}

void clear_data(var fruits) {
  var get_special_items = fruits.where((element) => element == 'banana' || element == 'limon');
  print('banana : ${get_special_items}');
  fruits.clear();
  print('Clear : ${fruits}');
}
