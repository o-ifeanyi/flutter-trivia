import 'package:ai_trivia/app/data/trivia_repository_impl.dart';
import 'package:ai_trivia/app/domain/trivia_repository.dart';
import 'package:ai_trivia/app/presentation/provider/trivia_provider.dart';
import 'package:ai_trivia/core/services/dialog_service/dialog_service.dart';
import 'package:ai_trivia/core/services/dialog_service/dialog_service_impl.dart';
import 'package:ai_trivia/core/services/network_service/network_service.dart';
import 'package:ai_trivia/core/services/network_service/network_service_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  final sharedPreference = await SharedPreferences.getInstance();

  const timeout = Duration(minutes: 1);
  final Dio dio = Dio(BaseOptions(
    baseUrl: 'https://opentdb.com',
    receiveTimeout: timeout,
    connectTimeout: timeout,
    sendTimeout: timeout,
    contentType: 'application/json',
  ));
  // final interceptor = AuthInterceptor(preferences: sharedPreference);
  // dio.interceptors.add(interceptor);

  // Trivia Provider
  sl.registerFactory(
      () => TriviaProvider(triviaRepository: sl(), dialogService: sl()));
  // Auth Repository
  sl.registerLazySingleton<TriviaRepository>(
      () => TriviaRepositoryImpl(networkService: sl()));

  // Externals
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreference);
  sl.registerLazySingleton<Dio>(() => dio);

  // Services
  sl.registerLazySingleton<DialogService>(() => DialogServiceImpl());
  sl.registerLazySingleton<NetworkService>(() => NetworkServiceImpl(
        dio: sl(),
      ));
}
