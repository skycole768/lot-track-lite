import 'package:flutter/material.dart';
import 'screens/vehicle_list.dart';

void main() {
  runApp(LotTrackApp());
}

class LotTrackApp extends StatelessWidget {
  const LotTrackApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LotTrack Lite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: VehicleListScreen(),
    );
  }
}