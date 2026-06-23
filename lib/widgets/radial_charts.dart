import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyRadialCharts extends StatelessWidget {
  const MyRadialCharts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<RadialData> radialData = [
      RadialData(xData: 'PRATIK', yData: 2000),
      RadialData(xData: 'AYUSH', yData: 3000),
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
                  RadialBarSeries<RadialData, String>(
                    radius: '100%',
                    gap: '5%',
                    cornerStyle: CornerStyle.bothCurve,
                    innerRadius: '40%',
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    // dataLabelMapper: (datum, index) => datum.xData,
                    dataSource: radialData,
                    xValueMapper: (RadialData datum, int index) => datum.xData,
                    yValueMapper: (RadialData datum, int index) => datum.yData,
                  ),
                ],
              ),

              SfCircularChart(
                title: ChartTitle(text: 'Sales Data'),
                legend: Legend(isVisible: true),
                series: [
                  DoughnutSeries<RadialData, String>(
                    radius: '100%',
                    innerRadius: '40%',
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    // dataLabelMapper: (datum, index) => datum.xData,
                    dataSource: radialData,
                    xValueMapper: (RadialData datum, int index) => datum.xData,
                    yValueMapper: (RadialData datum, int index) => datum.yData,
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

class RadialData {
  final num yData;
  final String xData;
  RadialData({required this.xData, required this.yData});
}
