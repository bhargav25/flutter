import 'package:flutter/material.dart';

import 'RentalCar_dashboard.dart';

void main() => runApp(RentalCarApp());

class RentalCarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RentalCarDashboard(),
    );
  }
}