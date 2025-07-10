import 'package:flutter/material.dart';
import 'package:shipping_dashboard/const/constant.dart';
import 'package:shipping_dashboard/data/schedule_data.dart';
import 'package:shipping_dashboard/widgets/customs/custom_card_widget.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    final data = ScheduleData();

    Widget list = ListView.separated(
      itemCount: data.data.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        return CustomCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.data[index].status,
                style: TextStyle(
                  color: selectionColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(color: primaryColor),
              _body('Description', data.data[index].description),
              _body('Date', data.data[index].date),
            ],
          ),
        );
      },
    );

    return height != null
        ? SizedBox(height: height, child: list)
        : Expanded(child: list);
  }

  Widget _body(String key, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Text('$key : $value'),
    );
  }
}
