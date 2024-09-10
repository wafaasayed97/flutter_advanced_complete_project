import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/theming/colors.dart';
import 'package:flutter_advanced_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(
                start: index == 0 ? 0.w : 24.w,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28.r,
                    backgroundColor: ColorsManager.lightBlue,
                    child:
                        SvgPicture.asset('assets/svgs/general_speciality.svg'),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Dermatologist",
                    style: TextStyles.font12DarkBLueRegular,
                  )
                ],
              ),
            );
          },
        ));
  }
}
