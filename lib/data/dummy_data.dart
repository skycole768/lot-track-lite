import '../models/vehicle.dart';

final List<Vehicle> dummyVehicles = [
  Vehicle(
    id: 'V001',
    make: 'Toyota',
    model: 'Camry',
    year: 2020,
    color: 'Silver',
    licensePlate: 'ABC123',
    status: 'Arrived at Lot',
    lastUpdated: DateTime.now(),
    imageUrl: 'https://www.seegertoyota.com/static/dealer-12152/SE_-_2020_Toyota_Camry.png'
  ),
  Vehicle(
    id: 'V002',
    make: 'Honda',
    model: 'Accord',
    year: 2019,
    color: 'Black',
    licensePlate: 'XYZ789',
    status: 'In Inspection',
    lastUpdated: DateTime.now(),
    imageUrl: 'https://di-shared-assets.dealerinspire.com/legacy/rackspace/ldm-images/2019-honda-accord-crystal-black-pearl.png'
  ),
  Vehicle(
    id: 'V003',
    make: 'Chevrolet',
    model: 'Malibu',
    year: 2018,
    color: 'Red',
    licensePlate: 'LMN456',
    status: 'Being Washed',
    lastUpdated: DateTime.now(),
    imageUrl: 'https://images.dealer.com/ddc/vehicles/2018/Chevrolet/Malibu%20Hybrid/Sedan/perspective/front-left/2018_46.png'
  ),
  Vehicle(
    id: 'V004',
    make: 'Ford',
    model: 'Fusion',
    year: 2021,
    color: 'White',
    licensePlate: 'DEF321',
    status: 'In Auction Lane',
    lastUpdated: DateTime.now(),
    imageUrl: 'https://di-uploads-development.dealerinspire.com/dibrandhubford/uploads/2022/02/2020-Ford-Fusion-Hybrid.png'
  ),
  Vehicle(
    id: 'V005',
    make: 'BMW',
    model: '2 Series',
    year: 2022,
    color: 'Blue',
    licensePlate: 'JKL654',
    status: 'Ready for Auction',
    lastUpdated: DateTime.now(),
    imageUrl: 'https://di-shared-assets.dealerinspire.com/legacy/rackspace/ldm-images/2022-BMW-2-Series-color-Phytonic-Blue-Metallic.png'
  ),
  Vehicle(
    id: 'V006',
    make: 'Hyundai',
    model: 'Elantra',
    year: 2017,
    color: 'Gray',
    licensePlate: 'QWE789',
    status: 'Sold',
    lastUpdated: DateTime.now(),
    imageUrl: 'https://dealerimages.dealereprocess.com/image/upload/c_limit,f_auto,fl_lossy,w_400/v1/svp/dep/21hyundaielantralltd/hyundai_21elantralimited_angularfront_electricshadow'
  ),

  Vehicle(
    id: 'V009',
    make: 'Mazda',
    model: '6',
    year: 2020,
    color: 'Maroon',
    licensePlate: 'MNB345',
    status: 'Waiting for Wash',
    lastUpdated: DateTime.now(),
    imageUrl: 'https://di-uploads-pod2.dealerinspire.com/mazdaofmanchester/uploads/2020/08/2020-Mazda6-Grand-Touring.png'
  ),
  Vehicle(
    id: 'V010',
    make: 'Subaru',
    model: 'Legacy',
    year: 2022,
    color: 'Blue',
    licensePlate: 'POI678',
    status: 'Waiting for Inspection',
    lastUpdated: DateTime.now(),
    imageUrl: 'https://s7d9.scene7.com/is/image/streamcompanies/INTRO-24-Subaru-Legacy?\$Original-Dimensions-RGB-PNG\$'
  ),
];