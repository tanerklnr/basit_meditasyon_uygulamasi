import 'package:flutter/material.dart';
import 'package:meditasyon_ana/DashBoard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
