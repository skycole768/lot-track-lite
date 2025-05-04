import '../models/vehicle.dart';

final List<Vehicle> dummyVehicles = [
  Vehicle(
    id: 'v1',
    make: 'Toyota',
    model: 'Camry',
    year: 2020,
    color: 'Blue',
    licensePlate: 'ABC123',
    status: 'At Gate', 
    lastUpdated: DateTime.now()
  ),
  Vehicle(
    id: 'v2',
    make: 'Honda',
    model: 'Civic',
    year: 2019,
    color: 'Red',
    licensePlate: 'XYZ456',
    status: 'In Lane',
    lastUpdated: DateTime.now()
  ),
  Vehicle(
    id: 'v3',
    make: 'Ford',
    model: 'Mustang',
    year: 2021,
    color: 'Black',
    licensePlate: 'LMN789',
    status: 'Being Washed',
    lastUpdated: DateTime.now()
  ),
  Vehicle(
    id: 'v4',
    make: 'Chevrolet',
    model: 'Malibu',
    year: 2018,
    color: 'White',
    licensePlate: 'QRS012',
    status: 'Finished',
    lastUpdated: DateTime.now()
  ),
  Vehicle(
    id: 'v5',
    make: 'Nissan',
    model: 'Altima',
    year: 2022,
    color: 'Silver',
    licensePlate: 'TUV345',
    status: 'At Gate',
    lastUpdated: DateTime.now()
  ),
];