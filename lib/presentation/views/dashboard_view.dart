import 'package:flutter/material.dart';

import '../widgets/adaptive_layout.dart';
import 'dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AdaptiveLayout(
        mobileLayout:  (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
