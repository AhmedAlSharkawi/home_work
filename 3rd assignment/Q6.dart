void main() {
  Map<String, dynamic> student = {
    'name': 'Ahmed',
    'age': 20,
    'grade': 'A'
  };
  print('Initial student map: $student');

  student['major'] = 'Computer Science';
  print('After adding major: $student');

  student['age'] = 21;
  print('After updating age: $student');

  student.remove('grade');
  print('After removing grade: $student');

  print('Student details:');
  student.forEach((key, value) {
    print('$key: $value');
  });
}
