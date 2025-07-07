import 'package:flutter/material.dart';
import 'package:shipping_dashboard/const/constant.dart';
import 'package:shipping_dashboard/data/line_chart_data.dart';
import 'package:shipping_dashboard/widgets/customs/custom_card_widget.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard ({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Data Overview',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: primaryColor),
          ),
          SizedBox(height: 10,),
          AspectRatio(
            aspectRatio: 16/6,
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  handleBuiltInTouches: true
                ),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false)
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false)
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta){
                        return data.bottomTitle[value.toInt()] != null
                        ? SideTitleWidget(
                          axisSide: meta.axisSide,
                            child: Text(
                              data.bottomTitle[value.toInt()].toString(),
                              style: TextStyle(fontSize: 14),
                            )): SizedBox();
                      },
                      interval: 1,
                      reservedSize: 40
                    )
                  )
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    color: selectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          selectionColor.withAlpha(10),
                          Colors.transparent
                        ]
                      )
                    ),
                    dotData: FlDotData(show: false),
                    spots: data.spots
                  )
                ],
                minX: 0,
                maxX: 120,
                maxY: 105,
                minY: -5
              )
            ),
          )
        ],
      )
    );
  }
}