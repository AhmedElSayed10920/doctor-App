import 'package:dio/dio.dart';
import 'package:doctor/core/services/api_service.dart';
import 'package:doctor/core/services/dio_factory.dart';
import 'package:doctor/features/login_feature/data/repos/login_repo.dart';
import 'package:doctor/features/login_feature/logic/login_cubit/login_cubit.dart';
import 'package:doctor/features/signup_feature/data/repos/sign_up_repo.dart';
import 'package:doctor/features/signup_feature/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // Signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
