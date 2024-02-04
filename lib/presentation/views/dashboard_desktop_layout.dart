import 'package:flutter/material.dart';

import '../widgets/all_expenses_and_quick_invoice_section.dart';

import '../widgets/card_widgets/my_cards_section.dart';
import '../widgets/drawer_widgets/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 4,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: MyCardsSection(),
        ),
      ],
    );
  }
}
