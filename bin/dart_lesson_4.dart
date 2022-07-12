//Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
void main() {
  final Map<int, String> NamePerson = {
    1: "Alex",
    2: "Petr",
    3: "Evgen",
    4: "Petr"
  };
  var name = "Alex";
  var sum = 0;
  for (var index = 1; index < 5; index++) {
    if (NamePerson[index] == name) {
      sum = sum + 1;
    }
  }
  print(sum);
}
