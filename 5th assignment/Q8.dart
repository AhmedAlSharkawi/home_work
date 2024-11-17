class Car {
  String company;
  String model;
  int year;

  Car({required this.company, required this.model, required this.year});

  void displayInfo() {
    print("Car Details:");
    print("Company: $company");
    print("Model: $model");
    print("Year: $year");
  }
}

class ElectricCar extends Car {
  int batteryCapacity;

  ElectricCar({
    required String company,
    required String model,
    required int year,
    required this.batteryCapacity,
  }) : super(company: company, model: model, year: year);

  void displayBatteryStatus() {
    print("Battery Capacity: $batteryCapacity kWh");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Battery Capacity: $batteryCapacity kWh");
  }
}

void main() {
  ElectricCar myElectricCar = ElectricCar(
    company: "Tesla",
    model: "Model S",
    year: 2023,
    batteryCapacity: 100,
  );

  myElectricCar.displayInfo();
  myElectricCar.displayBatteryStatus();
}
