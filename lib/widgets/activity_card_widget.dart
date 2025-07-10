import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shipping_dashboard/const/constant.dart';
import 'package:shipping_dashboard/data/card_dashboard_detail_data.dart';
import 'package:shipping_dashboard/utilities/responsive.dart';
import 'package:shipping_dashboard/widgets/customs/custom_card_widget.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    final cardDetail = CardDashboardDetailData();
    return GridView.builder (
      itemCount: cardDetail.cardData.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2: 4,
        crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
        mainAxisSpacing: 12.0
      ),
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              cardDetail.cardData[index].icon,
              size: 45,
              color: primaryColor,
            ),
            SizedBox(height: 20,),
            Text(
              cardDetail.cardData[index].value,
              style: TextStyle(
                fontSize: 25,
                color: selectionColor,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            Text(
              cardDetail.cardData[index].title,
              style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}