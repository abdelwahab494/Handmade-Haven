import 'package:flutter/material.dart';
import 'package:handmade/core/extensions/app_sizes_extenstion.dart';
import 'package:handmade/core/manager/app_colors.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    super.key,
    required this.padding,
    this.isReversed = false,
    required this.child,
  });
  final Widget child;
  final EdgeInsetsGeometry padding;
  final bool isReversed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: isReversed
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(1000.rd),
              border: Border.all(color: AppColors.FF9985),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(1000.rd),
              gradient: const LinearGradient(
                begin: AlignmentGeometry.centerLeft,
                end: AlignmentGeometry.centerRight,
                colors: [AppColors.FF7D6C, AppColors.FFB49C],
              ),
            ),
      child: child,
    );
  }
}
