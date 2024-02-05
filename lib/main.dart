import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'presentation/views/dashboard_view.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) {
      return const MyApp();
    }
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Admin Dashboard',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const DashBoardView(),
    );
  }
}

