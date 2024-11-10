class Car {
  String make;
  String model;
  int year;
  double mileage;

  Car(this.make, this.model, this.year, this.mileage);

  void drive(double distance) {
    mileage += distance;
    print("You drove $distance miles. Total mileage is now $mileage miles.");
  }

  void displayInfo() {
    print("Car Info: $year $make $model with $mileage miles.");
  }
}

void main() {
  Car myCar = Car("Toyota", "Corolla", 2015, 50000.0);

  print("Car Make: ${myCar.make}");
  print("Car Model: ${myCar.model}");
  print("Car Year: ${myCar.year}");
  print("Car Mileage: ${myCar.mileage}");

  myCar.displayInfo();
  myCar.drive(150);
  myCar.displayInfo();
}
