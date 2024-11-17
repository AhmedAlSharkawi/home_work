import 'dart:io';

void main() {
  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  double addition = num1 + num2;
  double subtraction = num1 - num2;
  double multiplication = num1 * num2;
  double division = num2 != 0 ? num1 / num2 : double.nan;

  print('Addition: $addition');
  print('Subtraction: $subtraction');
  print('Multiplication: $multiplication');
  print('Division: ${num2 != 0 ? division : 'Undefined (division by zero)'}');
}
