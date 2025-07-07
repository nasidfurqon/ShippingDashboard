import 'package:flutter/material.dart';
import 'package:shipping_dashboard/widgets/activity_card_widget.dart';
import 'package:shipping_dashboard/widgets/header_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

@override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            const SizedBox(height: 20),
            const HeaderWidget(),
            const SizedBox(height: 20),
            SizedBox(
              height:
                  constraints.maxHeight - 92, 
              child: const ActivityCard(),
            ),
          ],
        );
      },
    );
  }

}