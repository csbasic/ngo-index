import 'package:get/get.dart';
import 'package:ngo_index/data/api/api_client.dart';
import 'package:ngo_index/data/repository/auth_repo.dart';
import 'package:ngo_index/data/repository/ngo_list.dart';
import 'package:ngo_index/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences, fenix: true);

  // api client
  Get.lazyPut(
    () => ApiClient(appBaseUrl: AppConstants.BASE_URL),
    fenix: true,
  );
  Get.lazyPut(
    () => AuthRepo(
      apiClient: Get.find(),
      sharedPreferences: Get.find(),
    ),
    fenix: true,
  );

  // repos

  Get.lazyPut(() => NgoRepo(apiClient: Get.find()), fenix: true);
}
