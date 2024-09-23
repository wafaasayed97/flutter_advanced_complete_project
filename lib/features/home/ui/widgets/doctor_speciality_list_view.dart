import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/features/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced_complete_project/features/home/ui/widgets/doctor_speciality_listview_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationData?> ?specializationList;
  const DoctorSpecialityListView({super.key, required this.specializationList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specializationList!.length,
          itemBuilder: (context, index) {
            return  SpecialityListViewItem(index: index, specializationList: specializationList![index],);
          },
        ));
  }
}
