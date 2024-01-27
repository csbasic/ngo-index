import 'package:get/get.dart';
import 'package:ngo_index/data/api/api_client.dart';
import 'package:ngo_index/utils/app_constants.dart';

class NgoRepo {
  final ApiClient apiClient;

  NgoRepo({required this.apiClient});

  Future<Response> getNgoList() async {
    return await apiClient.getData(AppConstants.NGO_LIST);
  }

  Future<Response> getNgoDetail(id) async {
    return await apiClient.getData('${AppConstants.NGO_LIST}/$id');
  }
}
