//Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
void main() {
  final Map<int, String> namePerson = {
    1: "Alex",
    2: "Petr",
    3: "Evgen",
    4: "Petr",
    5: "Petr",
  };

  final Map<int, String> request = {};
  var name = "Petr";
  var sum = 0;

  for (var index = 0; index <= namePerson.length; index++) {
    if (namePerson[index] == name) {
      sum = sum + 1;
      request[sum] = name;
    }
  }

  print("${request.values.last} : ${request.keys.last}");
}
