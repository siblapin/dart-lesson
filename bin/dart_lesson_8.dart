//Создайте класс User, у которого есть поле email.
//Реализуйте два наследника данного класса AdminUser и GeneralUser.

//Реализуйте mixin над классом User, у которого будет метод getMailSystem, который возвращает значение из email, которое находится после @.
//Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser.
//Далее реализуйте класс UserManager<T extends User>, у которого будет храниться список пользователей и будут методы добавления или удаления их.
//Также в UserManager реализуйте метод, который выведет почту всех пользователей, однако если пользователь admin, будет выведено значение после @.
//Проверьте реализованные методы на практике.

void main() {
  final user = User("s.dm@mail.ru");
  final user1 = AdminUser("s3.dm@mail.ru");
  final user2 = GeneralUser("s3.dm@yandex.ru");
  var userManager = UserManager();
  userManager.add(user.userEmail);
  userManager.add(user1.userEmail);
  userManager.add(user2.userEmail);
  userManager.printList();
  print(user1.getMailSystem());
}

// миксин для AdminUser
mixin GetMail on User {
  getMailSystem() {
    var email = super.userEmail;
    var b = email.substring(email.indexOf("@"));
    return b;
  }
}

class User {
  final String userEmail;
  const User(this.userEmail);
}

class AdminUser extends User with GetMail {
  const AdminUser(userEmail) : super(userEmail);
}

class GeneralUser extends User {
  const GeneralUser(userEmail) : super(userEmail);
}

class UserManager {
  final List _userList = [];

  add(addIndex) {
    _userList.add(addIndex);
  }

  del(delIndex) {
    _userList.remove(delIndex);
  }

  printList() {
    print(_userList);
  }
}
