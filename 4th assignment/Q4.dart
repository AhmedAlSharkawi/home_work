void main() {
  // List Operations
  List<int> numbers = [1, 2, 3];
  numbers.add(4);
  numbers.add(5);
  numbers.remove(2);
  print('Final List: $numbers');

  // Set Operations
  Set<int> uniqueNumbers = {1, 2, 2, 3, 3, 4};
  print('Set without duplicates: $uniqueNumbers');

  // Map Operations
  Map<String, String> studentGrades = {
    'Ahmed': 'A',
    'Sara': 'B',
    'Hassan': 'C'
  };
  print("Ahmed's Grade: ${studentGrades['Ahmed']}");
  print("Hassan's Grade: ${studentGrades['Hassan']}");
}
