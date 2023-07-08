import 'package:bookly/Features/Search/data/repos/search_repo_imp.dart';
import 'package:bookly/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      getIt.get<ApiService>(),
    ),
  );

  getIt.registerSingleton<SearchRepoImp>(
    SearchRepoImp(
      getIt.get<ApiService>(),
    ),
  );
}
