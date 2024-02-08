import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? backgroundColor;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final String buttonText;
  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight,
      this.backgroundColor,
      required this.textStyle,
      required this.onPressed,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(buttonText,
            style: textStyle),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(backgroundColor??ColorsManager.mainBlue),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
        ),
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 55.h),
      ),
    ),);
  }
}
