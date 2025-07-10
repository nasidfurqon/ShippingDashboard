import 'package:flutter/material.dart';

class BarModel{
  final double x;
  final double y;

  const BarModel({required this.x, required this.y});
}
class BarGraphModel {
    final String label;
    final Color color;
    final List<BarModel> graph;

    const BarGraphModel({required this.label, required this.color, required this.graph}); 
}