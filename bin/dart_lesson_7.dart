//Реализуйте метод, который вычисляет корень любой заданной степени из числа.
//Реализуйте данный метод как extension-метод для num. Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени».
//Запрещается использовать методы math. В случае когда значение вернуть невозможно, необходимо бросать исключение с описанием ошибки.
import 'dart:math';

void main() {
  print(25.sqrt(2, 0.0001));
}

extension on num {
  num sqrt(int n, num e) {
    if (n == 0) return 1;
    if (n < 0) throw ArgumentError();
    num xk;
    num xkk = 1;
    do {
      xk = xkk;
      xkk = ((n - 1) * xk + this / xk.pow(n - 1)) / n;
    } while (abs(xkk - xk) > e);
    return xkk;
  }

  num pow(int n) {
    num result = this;
    for (var i = 1; i < n; i++) {
      result *= this;
    }
    return result;
  }

  num abs(num x) {
    if (x.sign == -1)
      return -x;
    else
      return x;
  }
}
