import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/helpers/spacing.dart';
import 'package:flutter_advanced_complete_project/features/home/logic/home_cubit.dart';
import 'package:flutter_advanced_complete_project/features/home/logic/home_state.dart';
import 'package:flutter_advanced_complete_project/features/home/ui/widgets/doctor_list_view.dart';
import 'package:flutter_advanced_complete_project/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is SpecializationLoading ||
            current is SpecializationSuccess ||
            current is SpecializationError,
        builder: (context, state) {
          return state.maybeWhen(
            specializationLoading: () {
              return setUpLoading();
            },
            specializationSuccess: (specializationResponseModel) {
              var specializationList =
                  specializationResponseModel.specializationList;
              return setUpSuccess(specializationList);
            },
            specializationError: (errorHandler) {
              return const SizedBox.shrink();
            },
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        });
  }
  Widget setUpLoading() {
    return const SizedBox(
      height: 100,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
  Widget setUpSuccess( specializationList) {
    return Expanded(
                child: Column(
                  children: [
                    DoctorSpecialityListView(
                      specializationList: specializationList ?? [],
                    ),
                    verticalSpace(8),
                    DoctorsListView(
                      doctorsList: specializationList?[0]?.doctorList,
                    ),
                  ],
                ),
              );  
  } 
  Widget setUpError() {
    return const SizedBox.shrink();
  }
}
