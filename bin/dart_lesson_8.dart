//Создайте класс User, у которого есть поле email.
//Реализуйте два наследника данного класса AdminUser и GeneralUser.

//Реализуйте mixin над классом User, у которого будет метод getMailSystem, который возвращает значение из email, которое находится после @.
//Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser.
//Далее реализуйте класс UserManager<T extends User>, у которого будет храниться список пользователей и будут методы добавления или удаления их.
//Также в UserManager реализуйте метод, который выведет почту всех пользователей, однако если пользователь admin, будет выведено значение после @.
//Проверьте реализованные методы на практике.
void main() {
  final user = User("stavr.dmb@mail.ru");
  final user1 = AdminUser("stavr.dmb@gmail.ru");
}

mixin GetMail {
  getMailSystem(String email) {
    var email1 = email.substring(email.indexOf("@"));
    print(email1);
  }
}

class User with GetMail {
  var a;
  User(this.a) {
    getMailSystem(a);
  }
}

class AdminUser extends User {
  AdminUser(email) : super(email);

  var b;
  @override
  getMailSystem(String b) {
    // TODO: implement getMailSystem
    return super.getMailSystem(b);
  }
}

class GeneralUser extends User {
  GeneralUser(email) : super(email);
}

//класс для хранения списка пользователей и будут методы добавления или удаления их.
//выведет почту всех пользователей, однако если пользователь admin, будет выведено значение после @.
class UserManager extends User {
  UserManager(email) : super(email);

  List userList = [];
}
