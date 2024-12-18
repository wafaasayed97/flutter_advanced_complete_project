import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/features/home/data/models/specialization_response_model.dart';
import 'package:flutter_advanced_complete_project/features/home/ui/widgets/doctor_listview_item.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorListViewItem(
            doctorModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}
