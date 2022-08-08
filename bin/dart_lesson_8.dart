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
  userManager.add(user1.adminUser);
  userManager.add(user2.generalUser);
  print(userManager.printList());
}

// миксин для AdminUser
mixin GetMail {
  getMailSystem(String x) {
    var b = x.substring(x.indexOf("@"));
    return b;
  }
}

class User {
  var userEmail;
  User(this.userEmail) {}
}

class AdminUser with GetMail {
  var adminUser;

  AdminUser(this.adminUser) {
    adminUser = getMailSystem(adminUser);
  }
}

class GeneralUser extends User {
  GeneralUser(user) : super(user);
  var generalUser;
}

class UserManager {
  List userList = [];

  add(addIndex) {
    userList.add(addIndex);
  }

  del(delIndex) {
    userList.remove('');
  }

  printList() {
    print(userList.join(','));
  }
}
