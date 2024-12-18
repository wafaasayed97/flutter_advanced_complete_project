
import 'package:flutter_advanced_complete_project/features/home/data/repos/home_repo.dart';
import 'package:flutter_advanced_complete_project/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(const HomeState.initial());
  final HomeRepo homeRepo;
  Future<void> getSpecialization() async {
    emit(const HomeState.specializationLoading());
    try {
      final response = await homeRepo.getSpecialization();

      response.when(
          success: (specializationResponse) {
            emit(HomeState.specializationSuccess(specializationResponse));
          },
          failure: (errorHandler) {
            emit(HomeState.specializationError(errorHandler));
          });
    } catch (errorHandler) {
      // emit(HomeState.specializationError(errorHandler));
    }
  }
}
