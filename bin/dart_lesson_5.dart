//Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
// Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке.
//Однако цифры встречаются в виде английских слов от zero до nine. Например, в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0].
// Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.
void main() {
  var numbers = ["one", "two", "three", "cat", "dog"];

  for (var index = 0; index < 5; index++) {
    switch (numbers[index]) {
      case 'one':
        print("1");
        break;
      case "two":
        print("2");
        break;
      case "three":
        print("3");
        break;
    }
  }
}
