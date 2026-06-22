import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyPieCharts extends StatelessWidget {
  const MyPieCharts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PieData> pieData = [
      PieData(xData: 'PRATIK', yData: 2000),
      PieData(xData: 'AYUSH', yData: 3000),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Cartesian Charts'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SfCircularChart(
                title: ChartTitle(text: 'Sales Data'),
                legend: Legend(isVisible: true),
                series: [
                  PieSeries<PieData, String>(
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    dataLabelMapper: (datum, index) => datum.xData,
                    explode: true,
                    explodeIndex: 1,
                    dataSource: pieData,
                    xValueMapper: (datum, index) => datum.xData,
                    yValueMapper: (datum, index) => datum.yData,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PieData {
  final num yData;
  final String xData;
  PieData({required this.xData, required this.yData});
}
