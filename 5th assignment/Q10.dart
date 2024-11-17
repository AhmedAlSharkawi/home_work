mixin Logger {
  void log(String message) {
    print("Log: $message");
  }
}

class User with Logger {
  String name;
  String email;

  User({required this.name, required this.email}) {
    log("User created: $name ($email)");
  }

  void deleteUser() {
    log("User deleted: $name ($email)");
  }
}

void main() {
  User user = User(name: "Ahmed", email: "ahmed@hotmail.com");
  user.deleteUser();
}
