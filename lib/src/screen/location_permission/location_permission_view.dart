import 'package:m_proof/src/widget/custom_rounded_button.dart';

import '../../core_utils/export_dependency.dart';
import '../../helpers/routes/route_name.dart';
import '../../widget/wave_clip.dart';

class LocationPermissionView extends StatefulWidget {
  const LocationPermissionView({super.key});

  @override
  State<LocationPermissionView> createState() => _LocationPermissionViewState();
}

class _LocationPermissionViewState extends State<LocationPermissionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        flexibleSpace: Image(
          image: AssetImage(AppImage.bgImage),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
              color: AppColors.bgColor,
              padding: EdgeInsets.symmetric(
                  vertical: AppDimens.height20, horizontal: AppDimens.width10),
              child: ListView(
                physics: const ClampingScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context,
                              RouteName.bottomNavBar, (route) => false);
                        },
                        child: Text(
                          "SKIP TO DASHBOARD",
                          style: AppStyle.skipTextStyle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.height50,
                  ),
                  Center(
                    child: Text(
                      "Hello, Nice to meet you !!!!r",
                      style: AppStyle.welcomeBackTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: AppDimens.height10,
                  ),
                  Center(
                    child: Text(
                      "See Services Near you",
                      style: AppStyle.signInTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: AppDimens.height20,
                  ),
                  Image.asset(
                    AppImage.permissionImage,
                    height: AppDimens.height200,
                    width: AppDimens.width200,
                  ),
                  SizedBox(
                    height: AppDimens.height15,
                  ),
                  CustomRoundButton(
                    text: "Your current location",
                    onPressedFunction: () async {},
                    color: const Color(0XFFFE7D50),
                    textColor: AppColors.whiteColor,
                    icon: Icons.my_location,
                    borderColor: const Color(0XFFFE7D50),
                  ),
                  SizedBox(
                    height: AppDimens.height15,
                  ),
                  CustomRoundButton(
                    text: "See other location",
                    onPressedFunction: () async {},
                    color: AppColors.whiteColor,
                    textColor: const Color(0XFF1E1E1E),
                    icon: Icons.search,
                    borderColor: const Color(0XFFD7D9DD),
                  )
                ],
              )),
          CustomPaint(
            painter: AppBarPainter(),
            child: Container(height: 0),
          ),
        ],
      ),
    );
  }
}
