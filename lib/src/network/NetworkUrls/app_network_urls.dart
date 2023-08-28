class AppNetworkUrls {
  static const _baseUrl = 'http://192.168.1.65:8000';
  static get baseUrl => _baseUrl;
  static const loginEndPint = '$_baseUrl/api/login';
  static const registerApiEndPoint = '$_baseUrl/api/register';
  static const verifyRegisterOTPApiEndPoint =
      '$_baseUrl/api/verify-register-otp';
  static const verifyLoginOTPApiEndPoint = '$_baseUrl/api/verify-login-otp';
  static const setMpinApiEndPoint = '$_baseUrl/api/set-mpin';
  static const favoritesApiEndPoint = '$_baseUrl/api/favorites';
  static const dashboardApiEndPoint = '$_baseUrl/api/dashboard';
  static const forgotPasswordApiEndPoint = '$_baseUrl/sendOTP';
  static const resetPasswordApiEndPoint = '$_baseUrl/resetPassword';
  static const changePasswordApiEndPoint = '$_baseUrl/changePassword';
  static const updateProfileApiEndPoint = '$_baseUrl/updateProfile';
  static const deleteProfileApiEndPoint = '$_baseUrl/deleteProfile';
}

class AppHeaders {
  Map<String, String> header = {"Content-Type": "application/json"};

  Map<String, String> headers = {
    "Content-Type": "application/json",
    "api-version": "1"
  };

  Map<String, String> secureHeaders = {
    "Content-Type": "application/json",
    "api-version": "1",
    "Authorization": ""
  };
}
