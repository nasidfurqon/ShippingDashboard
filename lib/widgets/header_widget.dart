import 'package:flutter/material.dart';
import 'package:shipping_dashboard/const/constant.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
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
      ) 
    );
  }
}