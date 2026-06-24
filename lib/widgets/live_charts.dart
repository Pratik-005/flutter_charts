import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LiveCahrts extends StatefulWidget {
  const LiveCahrts({super.key});

  @override
  State<LiveCahrts> createState() => _LiveCahrtsState();
}

class _LiveCahrtsState extends State<LiveCahrts> {
  late List<LiveData> chartData;
  late ChartSeriesController chartSeriesController;

  List<LiveData> getChartData() {
    return [
      LiveData(time: 0, speed: 44),
      LiveData(time: 1, speed: 42),
      LiveData(time: 2, speed: 46),
    ];
  }

  @override
  void initState() {
    chartData = getChartData();
    int time = 4;
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        chartData.add(LiveData(time: time++, speed: math.Random().nextInt(60)));
      });
      chartData.removeAt(0);
    });

    chartSeriesController.updateDataSource(
      addedDataIndex: chartData.length - 1,
      removedDataIndex: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Live Charts')),
      body: SfCartesianChart(
        legend: Legend(isVisible: true),
        series: [
          LineSeries<LiveData, int>(
            onRendererCreated: (controller) {
              chartSeriesController = controller;
            },
            dataSource: chartData,
            legendItemText: 'Sales',
            xValueMapper: (LiveData data, index) {
              return data.time;
            },
            yValueMapper: (LiveData data, index) {
              return data.speed;
            },
          ),
        ],
      ),
    );
  }
}

class LiveData {
  final int time;
  final num speed;
  LiveData({required this.time, required this.speed});
}
