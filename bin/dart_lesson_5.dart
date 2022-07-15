//Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
// Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке.
//Однако цифры встречаются в виде английских слов от zero до nine. Например, в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0].
// Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.

import 'dart:math';

void main() {
  var ramdom = [
    "one",
    "two",
    "three",
    "cat",
    "dog",
    "five",
    "one",
  ];

  List<String> numbersOne = [];

  for (var index = 0; index != ramdom.length; index++) {
    switch (ramdom[index]) {
      case 'one':
        numbersOne.add('one');
        break;
      case "two":
        numbersOne.add('two');
        break;
      case "three":
        numbersOne.add('three');
        break;
      case "four":
        numbersOne.add('four');
        break;
      case "five":
        numbersOne.add('five');
        break;
      case "six":
        numbersOne.add('six');
        break;
      case "seven":
        numbersOne.add('seven');
        break;
      case "eight":
        numbersOne.add('eight');
        break;
      case "nine":
        numbersOne.add('nine');
        break;
    }
  }
  print(numbersOne);
}
