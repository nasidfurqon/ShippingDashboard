import 'package:flutter/material.dart';
import 'package:shipping_dashboard/const/constant.dart';
import 'package:shipping_dashboard/widgets/customs/custom_card_widget.dart';

class SummaryListWidget extends StatelessWidget {
  const SummaryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSummary('crew', '1000202'),
          _buildSummary('crew', '1000202'), 
          _buildSummary('crew', '1000202'),
          _buildSummary('crew', '1000202'),
        ],
      ),
    );
  }

  Widget _buildSummary(String key, String value){
    return Column(
      children: [
        Text(
          key,
          style: TextStyle(
            fontSize: 16,
            color: primaryColor,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize:14,
            color: selectionColor
          ),
        )
      ],
    );
  }
}