import 'package:flutter/material.dart';
import 'package:shipping_dashboard/widgets/pie_chart_widget.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        PieChartWidget()
      ],
    );
  }
}