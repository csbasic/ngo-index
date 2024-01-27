import 'package:get/get.dart';
import 'package:ngo_index/screens/auth/signin_sreen.dart';
import 'package:ngo_index/screens/auth/signup_screen.dart';
import 'package:ngo_index/screens/home/home_screen.dart';
import 'package:ngo_index/screens/ngo/detail_screen.dart';
import 'package:ngo_index/screens/ngo/list_screen.dart';

class RouteHelper {
  static const String splashScreen = "/splash-page";
  static const String initial = "/";
  static const String ngoList = "/ngo-list";
  static const String ngoDetil = "/ngo-detail";

  // events
  static const String ngoEvents = "/ngo-events";
  static const String ngoEventDetail = "/ngo-event-detail";

  // auth
  static const String signIn = "/sign-in";
  static const String signUp = "/sign-up";

  // get constants
  static String getSplashScreen() => splashScreen;
  static String getInitial() => initial;
  static String getNgoList() => ngoList;
  static String getNgoDetail(int ngoId) => '$ngoDetil?ngoId=$ngoId';

  // auth constants
  static String getSignInScreen() => signIn;
  static String getSignUpScreen() => signUp;

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const HomeScreen()),
    GetPage(name: ngoList, page: () => const NgoList()),
    GetPage(
        name: ngoDetil,
        page: () {
          int ngoId = int.parse(Get.parameters['ngoId']!);
          return NgoDetail(ngoId: ngoId);
        }),

    // auth routes
    GetPage(name: signUp, page: () => const SignUpScreen()),
    GetPage(name: signIn, page: () => const SignInScreen()),
  ];
}
