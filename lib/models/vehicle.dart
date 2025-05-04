class Vehicle {  String id;
  String make;
  String model;
  int year;
  String color;
  String licensePlate;
  String status;
  DateTime lastUpdated;


  Vehicle({
    required this.id,
    required this.make,
    required this.model,
    required this.year,
    required this.color,
    required this.licensePlate,
    required this.status,
    required this.lastUpdated,
  });

  // Method to convert Vehicle object to a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'make': make,
      'model': model,
      'year': year,
      'color': color,
      'licensePlate': licensePlate,
      'status': status,
      'lastUpdated': lastUpdated.toIso8601String(),
    };
  }

  // Factory method to create a Vehicle object from a map
  factory Vehicle.fromMap(Map<String, dynamic> map) {
    return Vehicle(
      id: map['id'],
      make: map['make'],
      model: map['model'],
      year: map['year'],
      color: map['color'],
      licensePlate: map['licensePlate'],
      status: map['status'],
      lastUpdated: DateTime.parse(map['lastUpdated'])
    );
  }
}