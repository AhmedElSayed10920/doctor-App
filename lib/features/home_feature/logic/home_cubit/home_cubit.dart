import 'package:doctor/features/home_feature/data/view_models/home_repo.dart';
import 'package:doctor/features/home_feature/logic/home_cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getDoctorSpecialization() async {
    emit(const HomeState.loading());
    final response = await _homeRepo.getDoctorSpecialization();
    response.when(success: (response) {
      emit(HomeState.success(response));
    }, failure: (error) {
      emit(HomeState.failure(error.apiErrorModel.message!));
    });
  }
}
