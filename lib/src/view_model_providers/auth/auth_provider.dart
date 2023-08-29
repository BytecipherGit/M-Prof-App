import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:m_proof/src/network/models/request/auth/set_mpin_request.dart';
import '../../core_utils/export_dependency.dart';
import '../../core_utils/flush_bar_message.dart';
import '../../core_utils/toasts.dart';
import '../../helpers/routes/route_name.dart';
import '../../local_cache/preference_utils.dart';
import '../../network/NetworkUrls/app_network_urls.dart';
import '../../network/models/response/auth/login_response.dart';
import '../../network/models/response/auth/register_response.dart';
import '../../network/models/request/auth/change_password_request.dart';
import '../../network/models/request/auth/forgot_password_request.dart';
import '../../network/models/request/auth/login_request.dart';
import '../../network/models/request/auth/signup_request.dart';
import '../../network/models/request/auth/update_profile_request.dart';
import '../../network/models/request/auth/verify_otp_request.dart';
import '../../network/models/response/auth/user_response.dart';
import '../../network/models/response/profile/update_profile_response.dart';
import '../../repositories/auth_repository.dart';

class AuthProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  String countryCode = "+91";
  ValueNotifier<bool> loginPassObscureTextValue = ValueNotifier(true);
  ValueNotifier<bool> obscureTextValue = ValueNotifier(true);
  ValueNotifier<bool> cPObscureTextValue = ValueNotifier(true);
  ValueNotifier<bool> newPassObscureTextValue = ValueNotifier(true);
  ValueNotifier<bool> reEnterPassObscureTextValue = ValueNotifier(true);

  // for change password

  ValueNotifier<bool> oldPassObscureTextValue = ValueNotifier(true);
  ValueNotifier<bool> changeNewPassObscureTextValue = ValueNotifier(true);
  ValueNotifier<bool> changeReEnterNewPassObscureTextValue =
      ValueNotifier(true);

  setOldPassObscureText(bool value) {
    oldPassObscureTextValue.value = value;
    notifyListeners();
  }

  setChangeNewPassObscureText(bool value) {
    changeNewPassObscureTextValue.value = value;
    notifyListeners();
  }

  setChangeReEnterNewPassObscureText(bool value) {
    changeReEnterNewPassObscureTextValue.value = value;
    notifyListeners();
  }

  setLoginPassObscureText(bool value) {
    loginPassObscureTextValue.value = value;
    notifyListeners();
  }

  setObscureText(bool value) {
    obscureTextValue.value = value;
    notifyListeners();
  }

  setCPObscureText(bool value) {
    cPObscureTextValue.value = value;
    notifyListeners();
  }

  setNewPassObscureText(bool value) {
    newPassObscureTextValue.value = value;
    notifyListeners();
  }

  setReEnterPassObscureText(bool value) {
    reEnterPassObscureTextValue.value = value;
    notifyListeners();
  }

  void setLoading({required bool isLoading}) {
    _loading = isLoading;
    notifyListeners();
  }

  setCountryCode(String value) {
    countryCode = value;
    notifyListeners();
  }

  String restrictCharacters(TextEditingController controller) {
    RegExp regexp = RegExp(
      r"^|-|,| ",
      caseSensitive: false,
      multiLine: false,
    );
    String text = controller.text;
    String change = text.replaceAll(regexp, "");
    return change;
  }

  Future<void> loginApi(
      {required LoginRequest data, required BuildContext context}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setLoading(isLoading: true);
      AppLogger.logger.d("loginApi Request : ${data.toJson()}");

      // Call Function from the Repository Class
      await AuthRepository.authRepositoryInstance
          .authLoginApi(data: data, url: AppNetworkUrls.loginEndPint)
          .then((value) {
        final loginResponse = LoginResponse.fromJson(value);
        AppLogger.logger.d("UILoginHit: $loginResponse");

        if (loginResponse.success == false) {
          AppLogger.logger.d("error message: ${loginResponse.message}");
          FlushBarMessage.flushBarTopErrorMessage(
              message: loginResponse.message!, context: context);
          if (loginResponse.data!.isMobileVerify != 1) {
            Navigator.pushReplacementNamed(
                context, RouteName.otpAfterSignUpScreen,
                arguments: data);
          } else if (loginResponse.data!.mpin == null) {
            Navigator.pushReplacementNamed(
                context, RouteName.mpinAfterSignUpScreen,
                arguments: data);
          } else {}
        } else {
          AppLogger.logger.d("success message: ${loginResponse.message}");
          Navigator.pushReplacementNamed(context, RouteName.otpScreen,
              arguments: data);
          Toasts.getSuccessToast(text: loginResponse.message!);
          // PreferenceUtils.setLoginResponse(loginResponse).then((value) {
          //   Navigator.pushReplacementNamed(context, RouteName.otpScreen);
          //   Toasts.getSuccessToast(text: loginResponse.message!);
          // });
        }
        setLoading(isLoading: false);
      }).onError((error, stackTrace) {
        setLoading(isLoading: false);
      });
    } else {
      Toasts.getWarningToast(text: "No internet connection available");
    }
  }

  Future<void> registerApi(
      {required SignUpRequest data, required BuildContext context}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setLoading(isLoading: true);
      AppLogger.logger.d("registerApi Request : ${data.toJson()}");

      // Call Function from the Repository Class
      await AuthRepository.authRepositoryInstance
          .authRegisterApi(data: data, url: AppNetworkUrls.registerApiEndPoint)
          .then((value) {
        AppLogger.logger.d("value: $value");
        final registerResponse = RegisterResponse.fromJson(value);
        AppLogger.logger.d("UIRegisterHit: $registerResponse");

        if (registerResponse.success == false) {
          FlushBarMessage.flushBarTopErrorMessage(
              message: registerResponse.message!, context: context);
        } else {
          Toasts.getSuccessToast(text: registerResponse.message);
          Navigator.pushNamed(context, RouteName.otpAfterSignUpScreen,
              arguments: data);
        }
        setLoading(isLoading: false);
      }).onError((error, stackTrace) {
        setLoading(isLoading: false);
      });
    } else {
      Toasts.getWarningToast(text: "No internet connection available");
    }
  }

  Future<void> verifyRegisterOTPApi(
      {required VerifyOtpRequest data, required BuildContext context}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setLoading(isLoading: true);
      AppLogger.logger.d("verifyOTPApiRequest : ${data.toJson()}");

      // Call Function from the Repository Class
      await AuthRepository.authRepositoryInstance
          .authVerifyOTPApi(
              data: data.toJson(),
              url: AppNetworkUrls.verifyRegisterOTPApiEndPoint)
          .then((value) {
        AppLogger.logger.d("value: $value");
        final registerResponse = RegisterResponse.fromJson(value);
        AppLogger.logger.d("UIVerifyOTPHit: $registerResponse");
        setLoading(isLoading: false);
        if (registerResponse.success == false) {
          FlushBarMessage.flushBarTopErrorMessage(
              message: registerResponse.message!, context: context);
        } else {
          Toasts.getSuccessToast(text: registerResponse.message!);
          Navigator.pushReplacementNamed(
              context, RouteName.mpinAfterSignUpScreen,
              arguments: SignUpRequest(
                  phoneNumber: data.phoneNumber,
                  countryCode: data.countryCode));
        }
      }).onError((error, stackTrace) {
        setLoading(isLoading: false);
      });
    } else {
      Toasts.getWarningToast(text: "No internet connection available");
    }
  }

  Future<void> forgotPasswordApi(
      {required ResendOTPRequest data, required BuildContext context}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setLoading(isLoading: true);
      AppLogger.logger.d("forgotPasswordApi Request : ${data.toJson()}");

      // Call Function from the Repository Class
      await AuthRepository.authRepositoryInstance
          .authVerifyOTPApi(
              data: data.toJson(),
              url: AppNetworkUrls.forgotPasswordApiEndPoint)
          .then((value) {
        AppLogger.logger.d("value: $value");
        final registerResponse = RegisterResponse.fromJson(value);
        AppLogger.logger.d("UIForgetPasswordHit: $registerResponse");
        setLoading(isLoading: false);
        if (registerResponse.success == false) {
          FlushBarMessage.flushBarTopErrorMessage(
              message: registerResponse.message!, context: context);
        } else {
          Toasts.getSuccessToast(text: registerResponse.message);
          Navigator.pushNamed(context, RouteName.otpScreen,
              arguments: data.email);
        }
      }).onError((error, stackTrace) {
        setLoading(isLoading: false);
      });
    } else {
      Toasts.getWarningToast(text: "No internet connection available");
    }
  }

  Future<void> reSendOTPApi(
      {required ResendOTPRequest data, required BuildContext context}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setLoading(isLoading: true);
      AppLogger.logger.d("reSendOTPApi Request : ${data.toJson()}");
      // Call Function from the Repository Class
      await AuthRepository.authRepositoryInstance
          .authVerifyOTPApi(
              data: data.toJson(),
              url: AppNetworkUrls.forgotPasswordApiEndPoint)
          .then((value) {
        AppLogger.logger.d("value: $value");
        final registerResponse = RegisterResponse.fromJson(value);
        AppLogger.logger.d("UIResendOtpHit: $registerResponse");
        setLoading(isLoading: false);
        if (registerResponse.success == false) {
          FlushBarMessage.flushBarTopErrorMessage(
              message: registerResponse.message!, context: context);
        } else {
          Toasts.getSuccessToast(text: registerResponse.message);
        }
      }).onError((error, stackTrace) {
        setLoading(isLoading: false);
      });
    } else {
      Toasts.getWarningToast(text: "No internet connection available");
    }
  }

  Future<void> verifyLoginOTPApi(
      {required VerifyOtpRequest data, required BuildContext context}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setLoading(isLoading: true);
      AppLogger.logger.d("verifyLoginOTPApi Request : ${data.toJson()}");

      // Call Function from the Repository Class
      await AuthRepository.authRepositoryInstance
          .authVerifyOTPApi(
              data: data.toJson(),
              url: AppNetworkUrls.verifyLoginOTPApiEndPoint)
          .then((value) {
        AppLogger.logger.d("value: $value");
        final userResponse = UserResponse.fromJson(value);
        AppLogger.logger.d("UIVerifyLoginOTPApiHit: $userResponse");
        setLoading(isLoading: false);
        if (userResponse.success == false) {
          FlushBarMessage.flushBarTopErrorMessage(
              message: userResponse.message!, context: context);
        } else {
          PreferenceUtils.setUserResponse(userResponse).then((value) {
            Navigator.pushNamedAndRemoveUntil(
                context, RouteName.bottomNavBar, (route) => false);
            Toasts.getSuccessToast(text: userResponse.message!);
          });
        }
      }).onError((error, stackTrace) {
        setLoading(isLoading: false);
      });
    } else {
      Toasts.getWarningToast(text: "No internet connection available");
    }
  }

  Future<void> setMPinAfterSignUp(
      {required SetMPinRequest data, required BuildContext context}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setLoading(isLoading: true);
      AppLogger.logger.d("setMpinApi Request : ${data.toJson()}");

      // Call Function from the Repository Class
      await AuthRepository.authRepositoryInstance
          .setMPinAfterSignUp(
              data: data.toJson(), url: AppNetworkUrls.setMpinApiEndPoint)
          .then((value) {
        AppLogger.logger.d("value: $value");
        final registerResponse = RegisterResponse.fromJson(value);
        AppLogger.logger.d("UISetMpinApiHit: $registerResponse");
        setLoading(isLoading: false);
        if (registerResponse.success == false) {
          FlushBarMessage.flushBarTopErrorMessage(
              message: registerResponse.message!, context: context);
        } else {
          Toasts.getSuccessToast(text: registerResponse.message!);
          Navigator.pushNamedAndRemoveUntil(
              context, RouteName.loginScreen, (route) => false);
        }
      }).onError((error, stackTrace) {
        setLoading(isLoading: false);
      });
    } else {
      Toasts.getWarningToast(text: "No internet connection available");
    }
  }

  Future<void> changePasswordApi(
      {required ChangePasswordRequest data,
      required BuildContext context}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setLoading(isLoading: true);
      AppLogger.logger.d("changePasswordApi Request : ${data.toJson()}");
      // Call Function from the Repository Class
      await AuthRepository.authRepositoryInstance
          .authChangePasswordApi(
              data: data.toJson(),
              url: AppNetworkUrls.changePasswordApiEndPoint)
          .then((value) {
        AppLogger.logger.d("value: $value");
        final registerResponse = RegisterResponse.fromJson(value);
        AppLogger.logger.d("UIResetPasswordHit: $registerResponse");
        setLoading(isLoading: false);
        if (registerResponse.success == false) {
          FlushBarMessage.flushBarTopErrorMessage(
              message: registerResponse.message!, context: context);
        } else {
          Toasts.getSuccessToast(text: registerResponse.message!);
          Navigator.pop(context);
        }
      }).onError((error, stackTrace) {
        setLoading(isLoading: false);
      });
    } else {
      Toasts.getWarningToast(text: "No internet connection available");
    }
  }

  Future<void> updateProfileApi(
      {required UpdateProfileRequest data,
      required BuildContext context}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setLoading(isLoading: true);
      AppLogger.logger.d("UpdateProfileRequest Request : ${data.toJson()}");

      // Call Function from the Repository Class
      await AuthRepository.authRepositoryInstance
          .updateProfileApi(
              data: data, url: AppNetworkUrls.updateProfileApiEndPoint)
          .then((value) {
        AppLogger.logger.d("value: $value");
        final updateProfileResponse = UpdateProfileResponse.fromJson(value);
        AppLogger.logger.d("UIRegisterHit: $updateProfileResponse");

        if (updateProfileResponse.status == 0) {
          FlushBarMessage.flushBarTopErrorMessage(
              message: updateProfileResponse.message!, context: context);
        } else {
          // PreferenceUtils.setUpdateProfileResponse(updateProfileResponse)
          //     .then((value) {
          //   Navigator.pop(context);
          //   Toasts.getSuccessToast(text: updateProfileResponse.message!);
          // });
        }
        setLoading(isLoading: false);
      }).onError((error, stackTrace) {
        setLoading(isLoading: false);
      });
    } else {
      Toasts.getWarningToast(text: "No internet connection available");
    }
  }

  Future<void> deleteProfileApi({required BuildContext context}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      // Call Function from the Repository Class
      await AuthRepository.authRepositoryInstance
          .authDeleteProfileApi(url: AppNetworkUrls.deleteProfileApiEndPoint)
          .then((value) {
        AppLogger.logger.d("value: $value");
        final updateProfileResponse = UpdateProfileResponse.fromJson(value);
        AppLogger.logger.d("UIDeleteProfileHit: $updateProfileResponse");

        if (updateProfileResponse.status == 0) {
          FlushBarMessage.flushBarTopErrorMessage(
              message: updateProfileResponse.message!, context: context);
        } else {
          Toasts.getSuccessToast(text: updateProfileResponse.message!);
        }
      }).onError((error, stackTrace) {});
    } else {
      Toasts.getWarningToast(text: "No internet connection available");
    }
  }
}
