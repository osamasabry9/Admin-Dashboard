import 'package:flutter/material.dart';

import '../widgets/drawer_widgets/custom_drawer.dart';
import '../widgets/expenses_widgets/all_expenses.dart';
import '../widgets/quick_invoice_widgets/quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              AllExpenses(),
              SizedBox(
                height: 24,
              ),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
