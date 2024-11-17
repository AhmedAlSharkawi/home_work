void main() {
  String? nullableVariable = null; 

  print(nullableVariable ?? 'Default Message: Variable is null');

 
  nullableVariable = 'Hello, Dart!';
  print(nullableVariable ?? 'Default Message: Variable is null');
}
