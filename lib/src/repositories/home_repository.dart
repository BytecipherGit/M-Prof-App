import '../local_cache/preference_utils.dart';
import '../network/NetworkUrls/app_network_urls.dart';
import '../network/app_logger.dart';
import '../network/models/response/dashboard/dashboard_response.dart';
import '../network/network_api_service.dart';

class HomeRepository {
  // Generate Instance
  static final HomeRepository _homeRepository = HomeRepository();

  // Get Instance of the class
  static HomeRepository get homeRepositoryInstance => _homeRepository;

  Future<DashBoardResponse?> getDashBoardApi() async {
    String accessToken = PreferenceUtils.getUserAccessToken() ?? "";
    try {
      final headers = {
        "Content-Type": "application/json",
        "Authorization": 'Bearer $accessToken'
      };
      dynamic response = await NetworkApiService.apiServicesInstance
          .callGetApiResponse(
              url: AppNetworkUrls.dashboardApiEndPoint, myHeaders: headers);
      AppLogger.logger.d("getDashBoardApi: $response");

      return response = DashBoardResponse.fromJson(response);
    } catch (e) {
      AppLogger.logger.d("getDashBoardApiError: $e");
    }
    return null;
  }
}
