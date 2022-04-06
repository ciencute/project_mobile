import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ContainerWidget extends StatelessWidget {
  final Color color;
  final double borderRadius;
  final double pading;
  final Widget child;
  const ContainerWidget({
    Key? key,
    required this.child,
    this.color: AppColors.secondBackgroundColorLight,
    this.borderRadius = 8.0,
    this.pading = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: pading, vertical: pading),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      child: child,
    );
  }
}
