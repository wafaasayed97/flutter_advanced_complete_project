import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/helpers/spacing.dart';
import 'package:flutter_advanced_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.network(
                    'https://www.publicdomainpictures.net/pictures/450000/nahled/medical-doctor-cartoon-clipart.png',
                    width: 110.w,
                    height: 120.h,
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dr. John Doe", style: TextStyles.font18DarkBlueBold, overflow: TextOverflow.ellipsis,),
                     verticalSpace(5),
                      Text("Dermatologist", style: TextStyles.font12GrayRegular),
                      verticalSpace(5),
                      Text("Email : ", style: TextStyles.font12GrayRegular),

                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
