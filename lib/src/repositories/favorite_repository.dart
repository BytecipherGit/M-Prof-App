import 'package:m_proof/src/network/models/response/favorite/favorite_response.dart';

import '../local_cache/preference_utils.dart';
import '../network/NetworkUrls/app_network_urls.dart';
import '../network/app_logger.dart';
import '../network/network_api_service.dart';

class FavoriteRepository {
  // Generate Instance
  static final FavoriteRepository _favoriteRepository = FavoriteRepository();

  // Get Instance of the class
  static FavoriteRepository get favoriteRepositoryInstance =>
      _favoriteRepository;

  Future<FavoriteResponse?> getFavoritesApi() async {
    String accessToken = PreferenceUtils.getUserAccessToken() ?? "";
    try {
      final headers = {
        "Content-Type": "application/json",
        "Authorization": 'Bearer $accessToken'
      };
      dynamic response = await NetworkApiService.apiServicesInstance
          .callGetApiResponse(
              url: AppNetworkUrls.favoritesApiEndPoint, myHeaders: headers);
      AppLogger.logger.d("getFavoritesApi: $response");

      return response = FavoriteResponse.fromJson(response);
    } catch (e) {
      AppLogger.logger.d("getFavoritesApiError: $e");
    }
    return null;
  }

  Future<dynamic> setAsFavoritesApi({required int profId}) async {
    String accessToken = PreferenceUtils.getUserAccessToken() ?? "";
    try {
      final headers = {
        "Content-Type": "application/json",
        "Authorization": 'Bearer $accessToken'
      };
      dynamic response = await NetworkApiService.apiServicesInstance
          .callPostApiResponse(
              url: AppNetworkUrls.setAsFavoritesApiEndPoint,
              myHeaders: headers,
              body: {"prof_id": profId});
      return response;
    } catch (e) {
      AppLogger.logger.d("setAsFavoritesApiError: $e");
    }
    return null;
  }

  Future<FavoriteResponse?> getFavoritesDoctorApi() async {
    String accessToken = PreferenceUtils.getUserAccessToken() ?? "";
    String url =
        AppNetworkUrls.favoritesByCategoryApiEndPoint(category: 'Doctor');
    AppLogger.logger.d("getFavoritesDoctorApi Complete url: $url");

    try {
      final headers = {
        "Content-Type": "application/json",
        "Authorization": 'Bearer $accessToken'
      };
      dynamic response = await NetworkApiService.apiServicesInstance
          .callGetApiResponse(url: url, myHeaders: headers);
      AppLogger.logger.d("getFavoritesDoctorApi: $response");

      return response = FavoriteResponse.fromJson(response);
    } catch (e) {
      AppLogger.logger.d("getFavoritesDoctorApiError: $e");
    }
    return null;
  }

  Future<FavoriteResponse?> getFavoritesBarberApi() async {
    String accessToken = PreferenceUtils.getUserAccessToken() ?? "";
    String url =
        AppNetworkUrls.favoritesByCategoryApiEndPoint(category: 'Barber');
    AppLogger.logger.d("getFavoritesBarberApi Complete url: $url");
    try {
      final headers = {
        "Content-Type": "application/json",
        "Authorization": 'Bearer $accessToken'
      };
      dynamic response = await NetworkApiService.apiServicesInstance
          .callGetApiResponse(url: url, myHeaders: headers);
      AppLogger.logger.d("getFavoritesBarberApi: $response");

      return response = FavoriteResponse.fromJson(response);
    } catch (e) {
      AppLogger.logger.d("getFavoritesBarberApiError: $e");
    }
    return null;
  }

  Future<FavoriteResponse?> getFavoritesArtistApi() async {
    String accessToken = PreferenceUtils.getUserAccessToken() ?? "";
    String url =
        AppNetworkUrls.favoritesByCategoryApiEndPoint(category: 'Artist');
    AppLogger.logger.d("getFavoritesArtistApi Complete url: $url");
    try {
      final headers = {
        "Content-Type": "application/json",
        "Authorization": 'Bearer $accessToken'
      };
      dynamic response = await NetworkApiService.apiServicesInstance
          .callGetApiResponse(url: url, myHeaders: headers);
      AppLogger.logger.d("getFavoritesArtistApi: $response");

      return response = FavoriteResponse.fromJson(response);
    } catch (e) {
      AppLogger.logger.d("getFavoritesArtistApiError: $e");
    }
    return null;
  }
}
