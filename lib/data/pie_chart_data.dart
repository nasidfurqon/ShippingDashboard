import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
class ChartData {
  final data = [
    PieChartSectionData(
      color: Colors.red,
      value: 30,
      radius: 30,
      showTitle: false
    ),
    PieChartSectionData(
      color: Colors.blue,
      value: 25,
      radius: 28,
      showTitle: false
    ),
    PieChartSectionData(
      color: Colors.green,
      value: 20,
      radius: 26,
      showTitle: false
    ),
    PieChartSectionData(
      color: Colors.orange,
      value: 25,
      radius: 24,
      showTitle: false
    ),
  ];
}