import 'package:dalel_app/core/database/cache_helper.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  //! Database Caches
  sl.registerLazySingleton(() => CacheHelper());
}
