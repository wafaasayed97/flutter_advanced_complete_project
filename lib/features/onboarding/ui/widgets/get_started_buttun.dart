import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/helpers/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
        minimumSize: MaterialStateProperty.all(
           Size(double.infinity, 52.h),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Text(
        'Get Started',
        style: TextStyles.font16whiteSemiBold,
      ),
    );
  }
}
