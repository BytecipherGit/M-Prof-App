import '../local_cache/preference_utils.dart';
import '../network/app_logger.dart';
import '../network/network_api_service.dart';

class AuthRepository {
  // Generate Instance
  static final AuthRepository _authRepository = AuthRepository();

  // Get Instance of the class.
  static AuthRepository get authRepositoryInstance => _authRepository;
  Map<String, String> headers = {'Content-Type': 'application/json'};
  Map<String, String> camsHeaders = {'Content-Type': 'application/json'};

  Future<dynamic> authLoginApi(
      {required dynamic data, required String url}) async {
    AppLogger.logger.d("authLoginApi url : $url");

    try {
      dynamic response = await NetworkApiService.apiServicesInstance
          .callPostApiResponse(url: url, body: data, myHeaders: headers);
      return response;
    } catch (e) {
      AppLogger.logger.d("authLoginApiError: $e");
    }
  }

  Future<dynamic> authRegisterApi(
      {required dynamic data, required String url}) async {
    AppLogger.logger.d("authRegisterApi url : $url");

    try {
      dynamic response = await NetworkApiService.apiServicesInstance
          .callPostApiResponse(url: url, body: data, myHeaders: headers);
      return response;
    } catch (e) {
      AppLogger.logger.d("authRegisterApiError: $e");
    }
  }

  Future<dynamic> updateProfileApi(
      {required dynamic data, required String url}) async {
    AppLogger.logger.d("updateProfileApi url : $url");

    String suretekToken = PreferenceUtils.getUserToken() ?? "";
    try {
      final myHeaders = {
        "Content-Type": "application/json",
        "Authorization": suretekToken
      };
      dynamic response = await NetworkApiService.apiServicesInstance
          .callPostApiResponse(url: url, body: data, myHeaders: myHeaders);
      return response;
    } catch (e) {
      AppLogger.logger.d("updateProfileApiError: $e");
    }
  }

  Future<dynamic> authVerifyOTPApi(
      {required dynamic data, required String url}) async {
    AppLogger.logger.d("authVerifyOTPApi url : $url");

    try {
      dynamic response = await NetworkApiService.apiServicesInstance
          .callPostApiResponse(url: url, body: data, myHeaders: headers);
      return response;
    } catch (e) {
      AppLogger.logger.d("authVerifyOTPApiError: $e");
    }
  }

  Future<dynamic> authResetPasswordApi(
      {required dynamic data, required String url}) async {
    AppLogger.logger.d("authResetPasswordApi url : $url");

    try {
      dynamic response = await NetworkApiService.apiServicesInstance
          .callPostApiResponse(url: url, body: data, myHeaders: headers);
      return response;
    } catch (e) {
      AppLogger.logger.d("authResetPasswordApiError: $e");
    }
  }

  Future<dynamic> authChangePasswordApi(
      {required dynamic data, required String url}) async {
    String suretekToken = PreferenceUtils.getUserToken() ?? "";
    AppLogger.logger.d("authChangePasswordApi url : $url");

    try {
      final headers = {
        "Content-Type": "application/json",
        "Authorization": suretekToken
      };
      dynamic response = await NetworkApiService.apiServicesInstance
          .callPostApiResponse(url: url, body: data, myHeaders: headers);
      return response;
    } catch (e) {
      AppLogger.logger.d("authChangePasswordApiError: $e");
    }
  }

  Future<dynamic> authDeleteProfileApi({required String url}) async {
    String suretekToken = PreferenceUtils.getUserToken() ?? "";
    String email = PreferenceUtils.getUserEmail() ?? "";
    AppLogger.logger.d("authDeleteProfileApi url : $url");

    try {
      final headers = {
        "Content-Type": "application/json",
        "Authorization": suretekToken
      };
      AppLogger.logger.d("authDeleteProfileApi headers: $headers");
      AppLogger.logger.d("authDeleteProfileApi url: $url");
      AppLogger.logger.d("authDeleteProfileApi email: $email");

      dynamic response = await NetworkApiService.apiServicesInstance
          .callPostApiResponse(
              url: url, body: {"email": email}, myHeaders: headers);
      return response;
    } catch (e) {
      AppLogger.logger.d("authDeleteProfileApiError: $e");
    }
  }
}
