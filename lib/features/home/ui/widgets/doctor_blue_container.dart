import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/helpers/spacing.dart';
import 'package:flutter_advanced_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 205.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 165.h,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/home_blue_pattern.png"),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book and\nschedule with\nnearset doctors",
                    style: TextStyles.font16WhiteRegular,
                    textAlign: TextAlign.start,
                  ),
                  verticalSpace(2),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 10.h),
                      ),
                      child: Text('Find Nearby',
                          style: TextStyles.font12BlueMedium),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                right: 0,
                top: 10,
                child: Image.asset(
                  'assets/images/omar.png',
                  height: 200.h,
                )),
          ],
        ));
  }
}
