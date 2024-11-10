import 'dart:io';

void main() {
  print("Enter a number:");
  double? number = double.tryParse(stdin.readLineSync()!);

  if (number == null) {
    print("Invalid input. Please enter a valid number.");
  } else if (number > 0) {
    print("The number is positive.");
  } else if (number < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }
}
