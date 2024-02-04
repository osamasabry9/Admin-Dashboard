import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class TitleTextField extends StatelessWidget {

  final String title;
  final String hintText;
  const TitleTextField({
    super.key,
    required this.title,
    required this.hintText
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title, style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(hintText: hintText),
      ],
    );
  }
}