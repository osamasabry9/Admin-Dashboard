import 'package:flutter/material.dart';
import '../../../core/widgets/custom_background_container.dart';
import '../../../core/widgets/custom_button.dart';
import 'latest_transaction.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 16,
          ),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xFFF1F1F1),
          ),
          QuickInvoiceForm(),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  title: "Add more details",
                  backgroundColor: Colors.transparent,
                  textColor: Color(0xFF4DB7F2),
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: CustomButton(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
