import 'package:flutter/material.dart';
import 'package:shipping_dashboard/const/constant.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const CustomCard({super.key, required this.child, this.color, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8)
        ),
        color: color ?? cardBackground
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.all(12),
        child: child,
      ),
    );
  }
}