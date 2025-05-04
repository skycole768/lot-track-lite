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
      appBar: AppBar(
        backgroundColor: const Color(0xFF2D3E50),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text('${widget.vehicle.year} ${widget.vehicle.make} ${widget.vehicle.model}', style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w100,
            fontSize: 34, 
            letterSpacing: 1.2,
          ),
            )),
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.2,
            colors: [
              Colors.white,
              Color.fromARGB(255, 207, 231, 211),
            ],
          ),
        ),
        child: Center(
          child: ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: 1000,
              minWidth: MediaQuery.of(context).size.width * 0.3,
              minHeight: 500,
              maxHeight: MediaQuery.of(context).size.height * 0.7,
            ),
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            elevation: 6,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('ID: ${widget.vehicle.id}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 60),
            Text('Last Updated:', textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
            Text(widget.vehicle.lastUpdated.toString()),
            SizedBox(height: 60),
            Text('Current Status:', textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
            DropdownButton<String>(
              value: widget.vehicle.status,
              alignment: Alignment.center,
              onChanged: (value) {
                if (value != null) updateStatus(value);
              },
              items: statuses.map((status) {
                return DropdownMenuItem(value: status, child: Text(status));
              }).toList(),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
          ),
        ),
      ),
      )  
    );
  }
}
