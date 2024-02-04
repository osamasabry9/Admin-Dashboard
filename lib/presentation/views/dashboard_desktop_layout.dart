import 'package:flutter/material.dart';

import '../widgets/all_expenses_and_quick_invoice_section.dart';

import '../widgets/drawer_widgets/custom_drawer.dart';
import '../widgets/my_cards_and_transaction_history_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: CustomDrawer(),
          ),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 7,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            MyCardsAndTransactionHistorySection(),
                            SizedBox(
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
