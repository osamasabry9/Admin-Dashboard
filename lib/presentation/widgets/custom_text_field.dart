import 'package:flutter/material.dart';

import '../../core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      border: buildBorder(),
      enabledBorder: buildBorder(),
      focusedBorder: buildBorder(),
      fillColor: const Color(0xFFFAFAFA),
      filled: true,
      hintText: hintText,
      hintStyle: AppStyles.styleRegular16(context).copyWith(
        color: const Color(0xFFAAAAAA),
      ),
    ));
  }

  OutlineInputBorder buildBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xFFFAFAFA),
        ),
      );
}
