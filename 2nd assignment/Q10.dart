void main() {
  int? score;

  print(score ?? 'No score');

  score = 85;
  print(score ?? 'No score');
}
