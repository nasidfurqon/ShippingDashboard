import 'package:flutter/material.dart';
import 'package:shipping_dashboard/widgets/activity_card_widget.dart';
import 'package:shipping_dashboard/widgets/bar_graph_widget.dart';
import 'package:shipping_dashboard/widgets/header_widget.dart';
import 'package:shipping_dashboard/widgets/line_chart_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

@override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 22,),
            const HeaderWidget(),
            const SizedBox(height: 21),
            // SizedBox(
            //   height:
            //       constraints.maxHeight - 92, 
            //   child: const ActivityCard(),
            // ),
            const ActivityCard(),
            const SizedBox(height: 25),
            const LineChartCard(),
            const SizedBox(height: 25),
            const BarGraphCard(),
            const SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }

}