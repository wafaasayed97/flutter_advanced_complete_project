import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final String hintText;
  final Widget? suffixIcon;
  final bool? isObscure;
  final TextStyle? hintStyle;
  final TextStyle? inputStyle;
  final Color? backgroundColor;
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      required this.hintText,
      this.suffixIcon,
      this.isObscure,
      this.hintStyle,
      this.inputStyle,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: backgroundColor ?? ColorsManager.moreLightGray,
        filled: true,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(
                color: ColorsManager.lighterGray,
                width: 1.3,
              ),
            ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscure ?? false,
      style: inputStyle ?? TextStyles.font14DarkBlueMedium,
    );
  }
}
