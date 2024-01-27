import 'package:get/get.dart';
import 'package:ngo_index/utils/app_constants.dart';

class ApiClient extends GetConnect implements GetxService {
  late String? token;
  final String appBaseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl, this.token}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 20);
    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  void updateHeader(String token) {
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri) async {
    print('Get url =>$uri');

    try {
      Response response = await get(uri);
      // print('Gotten body =>' + response.body);
      return response;
    } catch (e) {
      print('Get url =>$e');
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> postData(String uri, dynamic body) async {
    print(body.toString());
    print('login url $uri');
    try {
      Response response = await post(uri, body, headers: _mainHeaders);
      print(response.body);
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
