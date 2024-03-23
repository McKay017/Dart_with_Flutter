import 'dart:io';

// Define an interface
abstract class Vehicle {
  void displayInfo();
}

// Base class
class Car {
  String make;
  String model;

  Car(this.make, this.model);

  void displayInfo() {
    print('Make: $make, Model: $model');
  }
}

// Subclass inheriting from Car and implementing Vehicle interface
class ElectricCar extends Car implements Vehicle {
  int batteryCapacity;

  ElectricCar(String make, String model, this.batteryCapacity)
      : super(make, model);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Battery Capacity: $batteryCapacity kWh');
  }
}

void main() {
  // Create an instance of ElectricCar initialized from a file
  ElectricCar myCar = readCarInfoFromFile('car_info.txt');
  myCar.displayInfo();

  // Demonstrate the use of a loop
  for (int i = 0; i < 3; i++) {
    print('Loop iteration: $i');
  }
}

ElectricCar readCarInfoFromFile(String fileName) {
  final file = File(fileName);
  final lines = file.readAsLinesSync();

  // Assuming file format: make,model,batteryCapacity
  final parts = lines[0].split(',');
  final make = parts[0];
  final model = parts[1];
  final batteryCapacity = int.parse(parts[2]);

  return ElectricCar(make, model, batteryCapacity);
}
