import 'package:flutter/material.dart';
import 'package:shipping_dashboard/const/constant.dart';
import 'package:shipping_dashboard/data/side_menu_data.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => SideMenuState();
}

class SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 90),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) => buildMenu(data, index)
      ),
    );
  }

  Widget buildMenu(SideMenuData data, int index){
    final isSelected = selectedIndex == index;

    return Container(
      margin: EdgeInsets.symmetric(vertical:3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: isSelected ? selectionColor : Colors.transparent
      ),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13  , vertical: 7),
                child: Icon(
                data.menu[index].icon,
                color: isSelected ? secondaryColor: primaryColor ,
                size: 30,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                fontSize: 17,
                color: isSelected? secondaryColor : primaryColor,
                fontWeight: FontWeight.normal
              ),
              
            )
          ],
        ),
      ),
    );
  }
}