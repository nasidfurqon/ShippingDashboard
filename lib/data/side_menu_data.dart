import 'package:flutter/material.dart';
import 'package:shipping_dashboard/models/side_menu_model.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(icon: Icons.home , title: "Dashboard"),
    MenuModel(icon: Icons.settings, title: "Settings"),
    MenuModel(icon: Icons.history, title: "History"),
    MenuModel(icon: Icons.logout, title: "SignOut")
  ];
}