import 'dart:io';

List fruits = [];
void main() {
  bool value = true;
  while (value) {
    print('choose addAll or add : ? ');
    String optional_choose = stdin.readLineSync().toString();
    print("Enter Fruit Name: ? ");
    String name = stdin.readLineSync().toString();
    if (optional_choose == 'addAll') {
      add_more_data(name);
    } else if (optional_choose == 'add') {
      print("Your Already to Add New Fruit Yes || No : ? ");
      String? optional_value = stdin.readLineSync();
      if (optional_value?.toLowerCase() == 'yes') {
        add_single_data(name);
        value = true;
        continue;
      } else {
        value = false;
      }
    } else {
      print('only have two optional !..');
    }
  }
}

void add_single_data(String name) {
  fruits.add(name);
  print(fruits);
}

void add_more_data(String name) {
  fruits.addAll([name]);
}
