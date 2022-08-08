void main() {
  getMailSystem(String x) {
    var b = x.substring(x.indexOf("@"));
    return b;
  }

  var mail = getMailSystem("x@mail.ru");
  print(mail);
}
