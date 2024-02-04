import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding,
    this.side = BorderSide.none,
    this.color = Colors.white,
  });

  final Widget child;
  final double? padding;
  final BorderSide side;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          side: side,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: child,
    );
  }
}
