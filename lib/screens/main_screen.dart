import 'package:flutter/material.dart';
import 'package:shipping_dashboard/utilities/responsive.dart';
import 'package:shipping_dashboard/widgets/dashboard_widget.dart';
import 'package:shipping_dashboard/widgets/summary_widget.dart';

import '../widgets/side_menu_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    
    return Scaffold(
      drawer: !isDesktop ?
        const SizedBox(
          width: 250,
          child: SideMenu(),
        ) : null,
      body: Row(
        children: [
          if(isDesktop)
            Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenu(),
              )
            ),
            Expanded(
              flex: 7,
              child: DashboardWidget()
            ),
            if(isDesktop)
            Expanded(
              flex: 3,
              child: SummaryWidget()
            )
        ],
      ),
    );
  }
}