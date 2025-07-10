import 'package:flutter/material.dart';
import 'package:shipping_dashboard/const/constant.dart';
import 'package:shipping_dashboard/data/schedule_data.dart';
import 'package:shipping_dashboard/widgets/customs/custom_card_widget.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduleData();
    return  Expanded( 
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 10,),
          itemCount: data.data.length,
          itemBuilder: (context, index){
            return CustomCard(
              child: Column(
                children: [
                  Text(
                    data.data[index].status,
                    style: TextStyle(
                      color: selectionColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Divider(
                    color: primaryColor,
                  ),
                  _body('Description', data.data[index].description),
                  _body('Date', data.data[index].date),
                ],
              ) 
            );
          }
        ),
      );
  }

  Widget _body(String key, String value){
    return Row(
      children: [
        Text(
          '$key : $value',
        ),
      ],
    );
  }
}