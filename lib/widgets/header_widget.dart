import 'package:flutter/material.dart';
import 'package:shipping_dashboard/const/constant.dart';
import 'package:shipping_dashboard/utilities/responsive.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: ()=> Scaffold.of(context).openDrawer(),
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.menu, color: primaryColor),
              ),
            ),
          ),
        Expanded(
          child: TextField(
            style: TextStyle(
              color: primaryColor
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: cardBackground,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: primaryColor)
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 5),
              hintText: 'Search',
              prefixIcon: Icon(
                Icons.search,
                color: primaryColor,
                size: 21,
              )
            ),
          ),
        ),
      ],
    );
  }
}