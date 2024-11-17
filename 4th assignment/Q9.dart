void displayMessage(String message, {String? name, int repeat = 1}) {
  for (int i = 0; i < repeat; i++) {
    if (name != null) {
      print('$message, $name!');
    } else {
      print(message);
    }
  }
}

void main() {
  displayMessage('Hello, Dart!');

  displayMessage('Welcome', name: 'Ahmed');

  displayMessage('Good Morning', name: 'Ahmed', repeat: 3);
}
