import 'dart:io';

void main() {
  print("Enter an integer:");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }
}
