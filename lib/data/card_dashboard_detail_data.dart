import 'package:flutter/material.dart';
import 'package:shipping_dashboard/models/card_dashboard_model.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class CardDashboardDetailData {
  final cardData = const [
    CardDashboardModel(icon: Icons.done_all, title: 'Accepted', value: "200"),
    CardDashboardModel(icon: BootstrapIcons.x, title: 'Rejected', value: "10"),
    CardDashboardModel(icon: BootstrapIcons.send, title: "Planned", value: "1"),
    CardDashboardModel(icon: BootstrapIcons.send_check, title: "Planned (Accepted)", value: "1"),
    CardDashboardModel(icon: BootstrapIcons.send_slash, title: "Planned (Rejected)", value: "1"),
  ]; 
}