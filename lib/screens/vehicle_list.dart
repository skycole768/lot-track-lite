import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../screens/vehicle_detail.dart';
import '../widgets/vehicle_card.dart';

class VehicleListScreen extends StatefulWidget {
  const VehicleListScreen({super.key});

  @override
  VehicleListScreenState createState() => VehicleListScreenState();
}

class VehicleListScreenState extends State<VehicleListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF2D3E50),
        title: const Text('Lot Track Lite',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w100,
            fontSize: 34, 
            letterSpacing: 1.2,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: dummyVehicles.length,
        itemBuilder: (ctx, index) {
          final vehicle = dummyVehicles[index];
          return VehicleCard(
            key: ValueKey(vehicle.id),
            vehicle: vehicle,
            onTap: () async {
              // wait for detail screen to return
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => VehicleDetailScreen(vehicle: vehicle),
                ),
              );
              // force a refresh after returning
              setState(() {});
            },
          );
        },
      ),
    );
  }
}
