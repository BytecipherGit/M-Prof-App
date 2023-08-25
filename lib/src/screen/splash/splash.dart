import 'package:flutter/foundation.dart';
import '../../core_utils/export_dependency.dart';
import '../../helpers/routes/route_name.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    if (kDebugMode) {}
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacementNamed(context, RouteName.bottomNavBar);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppImage.bgImage,
            ),
            fit: BoxFit.fill),
      ),
      child: Center(
        child: Image.asset(
          AppImage.appLogo,
          height: AppDimens.height100,
          width: AppDimens.height100,
        ),
      ),
    );
  }
}
