import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_background_container.dart';


class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 12,
      side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF064061),
            ),
          ),
        ],
      ),
    );
  }
}