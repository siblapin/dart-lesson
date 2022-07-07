void main() {
  int x = 22;
  var list1 = [];
  while (x > 0) {
    list1.add(x % 2);
    x = x ~/ 2;
  }
  print(list1.reversed);
}
