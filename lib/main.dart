import 'package:flutter/material.dart';
import 'package:flutter_charts/widgets/cartesian_charts.dart';
import 'package:flutter_charts/widgets/pie_charts.dart';
import 'package:flutter_charts/widgets/radial_charts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Charts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: MyRadialCharts(),
      builder: (context, child) => SafeArea(child: child!),
    );
  }
}
