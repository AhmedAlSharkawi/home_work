class Car {
  String make;
  String model;
  int year;

  Car({required this.make, required this.model, required this.year});


  void displayInfo() {
    print("Car Details:");
    print("Make: $make");
    print("Model: $model");
    print("Year: $year");
  }
}

void main() {
 
  Car myCar = Car(make: "Toyota", model: "Corolla", year: 2020);

 
  myCar.displayInfo();
}
