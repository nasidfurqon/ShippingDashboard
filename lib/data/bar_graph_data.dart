import 'package:shipping_dashboard/const/constant.dart';
import 'package:shipping_dashboard/models/bar_graph_model.dart';

class BarGraphData {
  final data = [
    BarGraphModel(
      label: "Activity",
      color: selectionColor,
      graph: [
        BarModel(x: 0, y: 8),
        BarModel(x: 1, y: 10),
        BarModel(x: 2, y: 7),
        BarModel(x: 3, y: 4),
        BarModel(x: 4, y: 4),
        BarModel(x: 5, y: 6),
        BarModel(x: 6, y: 9),

      ]
    ),
    BarGraphModel(label: "Another Activity", color: selectionColor, graph: [
      BarModel(x: 0, y: 8),
      BarModel(x: 1, y: 10),
      BarModel(x: 2, y: 7),
      BarModel(x: 3, y: 4),
      BarModel(x: 4, y: 4),
      BarModel(x: 5, y: 6),
      BarModel(x: 6, y: 9),
    ])
  ];

  final label = ['S','M', 'T', 'W', 'T', 'F', 'S'];
}