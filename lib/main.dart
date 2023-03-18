abstract class User {
  void displayUser();
}

class UserA implements User {
  @override
  void displayUser() {
    print('UserA');
  }
}

class UserB implements User {
  @override
  void displayUser() {
    print('UserB');
  }
}

class UserFactory {
  static User createUser(String type) {
    switch(type) {
      case 'A':
        return UserA();
      case 'B':
        return UserB();
      default:
        throw Exception('Invalid product type');
    }
  }
}

void main() {
  User userA = UserFactory.createUser('A');
  userA.displayUser(); // Output: UserA

  User userB = UserFactory.createUser('B');
  userB.displayUser(); // Output: UserB
}
