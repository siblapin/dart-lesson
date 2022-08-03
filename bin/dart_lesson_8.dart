//Создайте класс User, у которого есть поле email.
//Реализуйте два наследника данного класса AdminUser и GeneralUser.

//Реализуйте mixin над классом User, у которого будет метод getMailSystem, который возвращает значение из email, которое находится после @.
//Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser.
//Далее реализуйте класс UserManager<T extends User>, у которого будет храниться список пользователей и будут методы добавления или удаления их.
//Также в UserManager реализуйте метод, который выведет почту всех пользователей, однако если пользователь admin, будет выведено значение после @.
//Проверьте реализованные методы на практике.
void main() {
  AdminUser().getMailSystem("sib.lapin@mail.ru");
}

mixin User {
  var email = "sib.lapin@mail.ru";

  // который возвращает значение из email, которое находится после @(Например, если email пользователя user@mail.ru).
  getMailSystem(String email) {
    var email1 = email.substring(email.indexOf("@"));
    print(email1);
  }
}

// миксин от getMailSystem
class AdminUser with User {}

class GeneralUser with User {}

//класс для хранения списка пользователей и будут методы добавления или удаления их.
//выведет почту всех пользователей, однако если пользователь admin, будет выведено значение после @.
class UserManager with User {}
