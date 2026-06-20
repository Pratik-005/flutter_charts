import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyCartesianCharts extends StatelessWidget {
  const MyCartesianCharts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(year: 2000, sales: 34000, color: Colors.red),
      SalesData(year: 2001, sales: 38000, color: Colors.green),
      SalesData(year: 2002, sales: 30000, color: Colors.blue),
      SalesData(year: 2003, sales: 42000, color: Colors.yellow),
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
              SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: 'Sales Data'),
                series: [
                  LineSeries<SalesData, int>(
                    dashArray: [5, 5],
                    pointColorMapper: (datum, index) => datum.color,
                    legendItemText: 'Sales',
                    dataSource: chartData,
                    xValueMapper: (SalesData datum, int index) => datum.year,
                    yValueMapper: (SalesData datum, int index) => datum.sales,
                  ),
                ],
              ),
              SizedBox(height: 20),
              SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: 'Sales Data'),
                series: [
                  BarSeries<SalesData, int>(
                    dashArray: [5, 5],
                    pointColorMapper: (datum, index) => datum.color,
                    legendItemText: 'Sales',
                    dataSource: chartData,
                    xValueMapper: (SalesData datum, int index) => datum.year,
                    yValueMapper: (SalesData datum, int index) => datum.sales,
                  ),
                ],
              ),
              SizedBox(height: 20),
              SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: 'Sales Data'),
                series: [
                  SplineSeries<SalesData, int>(
                    dashArray: [5, 5],
                    pointColorMapper: (datum, index) => datum.color,
                    legendItemText: 'Sales',
                    dataSource: chartData,
                    xValueMapper: (SalesData datum, int index) => datum.year,
                    yValueMapper: (SalesData datum, int index) => datum.sales,
                  ),
                ],
              ),
              SizedBox(height: 20),
              SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: 'Sales Data'),
                series: [
                  AreaSeries<SalesData, int>(
                    dashArray: [5, 5],
                    pointColorMapper: (datum, index) => datum.color,
                    legendItemText: 'Sales',
                    dataSource: chartData,
                    xValueMapper: (SalesData datum, int index) => datum.year,
                    yValueMapper: (SalesData datum, int index) => datum.sales,
                  ),
                ],
              ),
              SizedBox(height: 20),
              SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: 'Sales Data'),
                series: [
                  WaterfallSeries<SalesData, int>(
                    dashArray: [5, 5],
                    pointColorMapper: (datum, index) => datum.color,
                    legendItemText: 'Sales',
                    dataSource: chartData,
                    xValueMapper: (SalesData datum, int index) => datum.year,
                    yValueMapper: (SalesData datum, int index) => datum.sales,
                  ),
                ],
              ),
              SizedBox(height: 20),
              SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: 'Sales Data'),
                series: [
                  ColumnSeries<SalesData, int>(
                    dashArray: [5, 5],
                    pointColorMapper: (datum, index) => datum.color,
                    legendItemText: 'Sales',
                    dataSource: chartData,
                    xValueMapper: (SalesData datum, int index) => datum.year,
                    yValueMapper: (SalesData datum, int index) => datum.sales,
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class SalesData {
  final int year;
  final double sales;
  final Color color;

  SalesData({required this.year, required this.sales, required this.color});
}
