import 'package:admin_dash_board/core/utils/size_config.dart';
import 'package:admin_dash_board/presentation/widgets/drawer_widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/adaptive_layout.dart';
import 'dashboard_desktop_layout.dart';
import 'dashboard_mobile_layout.dart';
import 'dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF7F9FA),
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? customAppBar()
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
            backgroundColor: const Color(0xFFFAFAFA),
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              icon: const Icon(
                Icons.menu,
              ),
            ),
          );
  }
}
