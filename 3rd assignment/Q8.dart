import 'dart:io';

void main() {
  print("Enter a number:");
  double? number = double.tryParse(stdin.readLineSync()!);

  if (number == null) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  double lowerBound = 10.0;
  double upperBound = 20.0;

  if (number >= lowerBound && number <= upperBound) {
    print("The number $number is within the range $lowerBound to $upperBound.");
  } else {
    print(
        "The number $number is outside the range $lowerBound to $upperBound.");
  }
}
