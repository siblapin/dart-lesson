void main() {
  int gdc(a, b) {
    while (a != b) {
      if (a > b) {
        a = a - b;
      } else {
        b = b - a;
      }
    }
    return a;
  }

  var nod = gdc(14, 7);
  print(nod);
}
