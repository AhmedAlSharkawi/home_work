void main() {
  int month = 5;

  switch (month) {
    case 12:
    case 1:
    case 2:
      print("It's Winter");
      break;
    case 3:
    case 4:
    case 5:
      print("It's Spring");
      break;
    case 6:
    case 7:
    case 8:
      print("It's Summer");
      break;
    case 9:
    case 10:
    case 11:
      print("It's Autumn");
      break;
    default:
      print("Invalid month");
  }
}
