import 'package:flutter/material.dart';
import '../models/vehicle.dart';

class VehicleDetailScreen extends StatefulWidget {
  final Vehicle vehicle;

  const VehicleDetailScreen({super.key, required this.vehicle});

  @override
  VehicleDetailScreenState createState() => VehicleDetailScreenState();
}

class VehicleDetailScreenState extends State<VehicleDetailScreen> {
  final List<String> statuses = [
    'Arrived at Lot',
    'Waiting for Inspection',
    'In Inspection',
    'Waiting for Wash',
    'Being Washed',
    'Ready for Auction',
    'In Auction Lane',
    'Sold',
    'Awaiting Pickup',
    'Picked Up / Shipped',
  ];

  void updateStatus(String newStatus) {
    setState(() {
      widget.vehicle.status = newStatus;
      widget.vehicle.lastUpdated = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.vehicle.model)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${widget.vehicle.id}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Current Status:', style: TextStyle(fontSize: 16)),
            DropdownButton<String>(
              value: widget.vehicle.status,
              onChanged: (value) {
                if (value != null) updateStatus(value);
              },
              items: statuses.map((status) {
                return DropdownMenuItem(value: status, child: Text(status));
              }).toList(),
            ),
            SizedBox(height: 20),
            Text('Last Updated:', style: TextStyle(fontSize: 16)),
            Text(widget.vehicle.lastUpdated.toString()),
          ],
        ),
      ),
    );
  }
}
