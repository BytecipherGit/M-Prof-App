import 'package:m_proof/src/helpers/routes/route_name.dart';

import '../../screen/bottom_nav_bar/bottom_nav_bar.dart';
import '../../screen/location_permission/location_permission_view.dart';
import '../../screen/login/login_view.dart';
import '../../screen/mpin/mpin_after_signup_view.dart';
import '../../screen/mpin/mpin_view.dart';
import '../../screen/otp/otp_after_signup_view.dart';
import '../../screen/otp/otp_view.dart';
import '../../screen/sign_up/sign_up_view.dart';
import '../../screen/splash/splash.dart';
import 'routes_export.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => const Splash());
      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case RouteName.otpScreen:
        return MaterialPageRoute(builder: (context) => const OTPView());
      case RouteName.mpinScreen:
        return MaterialPageRoute(builder: (context) => const MPinView());
      case RouteName.signUpScreen:
        return MaterialPageRoute(builder: (context) => const SignUpView());
      case RouteName.otpAfterSignUpScreen:
        return MaterialPageRoute(
            builder: (context) => const OTPAfterSignUpView());
      case RouteName.mpinAfterSignUpScreen:
        return MaterialPageRoute(
            builder: (context) => const MpinAfterSignUpView());
      case RouteName.locationPermissionScreen:
        return MaterialPageRoute(
            builder: (context) => const LocationPermissionView());
      case RouteName.bottomNavBar:
        return MaterialPageRoute(builder: (context) => const BottomNavBar());
      default:
        return MaterialPageRoute(builder: (context) => const Splash());
    }
  }
}
