import 'package:flutter/material.dart';
import 'package:shipping_dashboard/const/constant.dart';
import 'package:shipping_dashboard/widgets/pie_chart_widget.dart';
import 'package:shipping_dashboard/widgets/schedule_widget.dart';
import 'package:shipping_dashboard/widgets/sumarry_list_widget.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(height: 20,),
          PieChartWidget(),
          SizedBox(height: 20,),
          Text(
            'Summary',
            style: TextStyle(
              fontSize: 16,
              color: primaryColor,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 15),
          SummaryListWidget(),
          SizedBox(height: 20),
          Text(
            'Schedule',
            style: TextStyle(
                fontSize: 16, color: primaryColor, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          ScheduleWidget(),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}