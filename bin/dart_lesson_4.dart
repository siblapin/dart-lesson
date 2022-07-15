//Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
void main() {
  final Map<int, String> NamePerson = {
    1: "Alex",
    2: "Petr",
    3: "Evgen",
    4: "Petr",
    5: "Petr",
  };

  final Map<int, String> Request = {};
  var name = "Petr";
  var sum = 0;

  for (var index = 0; index <= NamePerson.length; index++) {
    if (NamePerson[index] == name) {
      sum = sum + 1;
      Request[sum] = name;
    }
  }

  print("${Request.values.last} : ${Request.keys.last}");
}
