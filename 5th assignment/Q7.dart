class Car {
 
  String _make;
  String _model;
  int year;

  // Constructor
  Car({required String make, required String model, required this.year})
      : _make = make,
        _model = model;

 
  String get make => _make;

 
  set make(String newMake) {
    if (newMake.isNotEmpty) {
      _make = newMake;
    } else {
      print("Invalid make.");
    }
  }

  
  String get model => _model;

  
  set model(String newModel) {
    if (newModel.isNotEmpty) {
      _model = newModel;
    } else {
      print("Invalid model.");
    }
  }

 
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


  myCar.make = "Honda";
  myCar.model = "Civic";


  myCar.displayInfo();
}
