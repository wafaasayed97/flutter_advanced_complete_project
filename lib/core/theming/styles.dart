import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles{
  static TextStyle font24black700wight = TextStyle (
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: Colors.black
    );
  static TextStyle font32BlueBold = TextStyle (
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ColorsManager.mainBlue
    );
  static TextStyle font12GrayRegular = TextStyle (
      fontSize: 12.sp,
      fontWeight: FontWeight.normal,
      color: ColorsManager.grey
    );
  static TextStyle font16whiteSemiBold = TextStyle (
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white
    );

  }
