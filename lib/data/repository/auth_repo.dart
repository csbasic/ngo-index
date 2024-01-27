import 'package:ngo_index/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:ngo_index/models/signin_body_model.dart';
import 'package:ngo_index/models/signup_body_model.dart';
import 'package:ngo_index/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({
    required this.apiClient,
    required this.sharedPreferences,
  });

  Future<Response> signUp(SignUpBody signUpBody) async {
    return await apiClient.postData(
        AppConstants.SIGN_UP_URI, signUpBody.toJson());
  }

  Future<Response> signIn(SignIn signIn) async {
    print('Sign Up Repo');
    print(
        "${AppConstants.SIGN_IN_URI}?login=${signIn.email}&password=${signIn.password}");
    return await apiClient.getData(
        "${AppConstants.SIGN_IN_URI}?login=${signIn.email}&password=${signIn.password}");
  }

  Future<void> setUserId(String useId) async {
    await sharedPreferences.setString(AppConstants.USER_REF, useId);
    getUserId();
  }

  Future<dynamic> getUserId() async {
    if (sharedPreferences.containsKey(AppConstants.USER_REF)) {
      AppConstants.USER = sharedPreferences.getString(AppConstants.USER_REF)!;
      return sharedPreferences.getString(AppConstants.USER_REF);
    }
  }

  Future<void> setIsSigin() async {
    await sharedPreferences.setString(AppConstants.LOGIN_REF, 'true');
  }

  Future<void> getIsSigin() async {
    if (sharedPreferences.containsKey(AppConstants.LOGIN_REF)) {
      AppConstants.IS_LOGIN =
          sharedPreferences.getString(AppConstants.LOGIN_REF)!;
    }
  }

  Future<void> signOut() async {
    if (sharedPreferences.containsKey(AppConstants.USER_REF)) {
      await sharedPreferences.remove(AppConstants.USER_REF);
      await sharedPreferences.remove(AppConstants.TOKEN_REF);
      await sharedPreferences.remove(AppConstants.LOGIN_REF);
      AppConstants.USER = '-1';
    }
  }
}
