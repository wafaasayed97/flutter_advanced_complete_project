import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/helpers/spacing.dart';
import 'package:flutter_advanced_complete_project/core/theming/styles.dart';
import 'package:flutter_advanced_complete_project/features/home/data/models/specialization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListViewItem extends StatelessWidget {
  final Doctors? doctorModel;
  const DoctorListViewItem({super.key, this.doctorModel});

  @override
  Widget build(BuildContext context) {
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
                Text(
                  doctorModel?.name ?? 'name',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text("${doctorModel?.degree} ||${doctorModel?.phone}",
                    style: TextStyles.font12GrayRegular),
                verticalSpace(5),
                Text(doctorModel?.email ?? 'email',
                    style: TextStyles.font12GrayRegular),
              ],
            ),
          )
        ],
      ),
    );
  }
}
