import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/theming/colors.dart';
import 'package:flutter_advanced_complete_project/core/theming/styles.dart';
import 'package:flutter_advanced_complete_project/features/home/data/models/specialization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationData? specializationList;
  final int index;
  const SpecialityListViewItem({super.key, required this.index, required this.specializationList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: index == 0 ? 0.w : 24.w,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: ColorsManager.lightBlue,
            child: SvgPicture.asset('assets/svgs/general_speciality.svg'),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            specializationList?.name??'name',
            style: TextStyles.font12DarkBLueRegular,
          )
        ],
      ),
    );
  }
}
