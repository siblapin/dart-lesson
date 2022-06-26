import 'package:dart_lesson_1/dart_lesson_1.dart' as dart_lesson_1;

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
