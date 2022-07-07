import 'dart:typed_data';

void main() {
// задание 3
//Реализуйте метод, который принимает строку слов, разделённых пробелами. Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

  var Name = "Aleks";
  var age = "34";
  var home = "Sib";
  var Person = '$Name $age $home';
  print('Запрос: $Person');

  findNumsIn(String string) {
    RegExp exp = RegExp(r"[^0-9]+");
    String str = string;
    String res = str.replaceAll(exp, '');
    print('Результат: $res');
  }

  var Person1 = findNumsIn(Person);
}
