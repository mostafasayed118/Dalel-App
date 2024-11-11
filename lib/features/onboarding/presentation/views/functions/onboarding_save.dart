import 'package:dalel_app/core/database/cache_helper.dart';
import 'package:dalel_app/core/services/services_locator.dart';
import 'package:dalel_app/core/utils/app_strings.dart';

void onBoardingVisited(){
    sl<CacheHelper>().saveData(key: AppStrings.isOnBoardingVisited, value: true);
}