  import 'package:flutter/material.dart';
  import 'package:shipping_dashboard/const/constant.dart';
  import 'package:shipping_dashboard/data/bar_graph_data.dart';
  import 'package:shipping_dashboard/models/bar_graph_model.dart';
  import 'package:shipping_dashboard/widgets/customs/custom_card_widget.dart';
  import 'package:fl_chart/fl_chart.dart';

  class BarGraphCard extends StatelessWidget {
    const BarGraphCard({super.key});

    @override
    Widget build(BuildContext context) {
      final data = BarGraphData();

      return GridView.builder(
        itemCount: data.data.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12
        ),
        itemBuilder: (context, index){
          return CustomCard(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.all(8.0),
                  child: Text(
                    data.data[index].label,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Expanded(
                  child: BarChart(
                    BarChartData(
                      barGroups: _charGroups(
                        points: data.data[index].graph,
                        color: data.data[index].color
                      ),
                      borderData: FlBorderData(border: Border()),
                      gridData: FlGridData(show: false), // menghilangkan grid di screen,
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta){
                              return Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  data.label[value.toInt()],
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              );
                            }
                          )
                        ),
                        leftTitles: AxisTitles(
                                sideTitles: SideTitles( 
                                  showTitles: true,
                                  reservedSize: 35,
                                  getTitlesWidget: (value, meta) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        value.toInt().toString(),
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),

                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false)
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false)
                        )
                    )
                  ) 
                )
              )],
            )
          );
        }
      );
    }

    List<BarChartGroupData> _charGroups(
      {required List<BarModel> points, required Color color}){
        return points
          .map((point)=> BarChartGroupData(x: point.x.toInt(), barRods: [
          BarChartRodData(
            toY: point.y,
            width: 12,
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(3.0),
              topRight: Radius.circular(3.0)
            )
          )
        ]))
        .toList();
      } 
  }