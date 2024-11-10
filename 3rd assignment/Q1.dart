
void calculator(double num1, double num2, {List<double>? addMultiple}) {
  double add = num1 + num2;
  double subtract = num1 - num2;
  double multiply = num1 * num2;

  double divide;
if (num2 != 0) {
  divide = num1 / num2;
} else {
  divide = double.nan;
}


  print("Addition: $add");
  print("Subtraction: $subtract");
  print("Multiplication: $multiply");
  print("Division: $divide");

if (addMultiple != null) {
  double sum = 0;
  for (var number in addMultiple) {
    sum = sum +  number;
  }
  print("Addition of multiple numbers: $sum");
}
}

void main() {
  calculator(5, 0, addMultiple: [1, 2, 3, 5]);
}
