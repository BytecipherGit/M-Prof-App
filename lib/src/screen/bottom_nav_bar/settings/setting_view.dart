import 'package:m_proof/src/helpers/routes/route_name.dart';

import '../../../core_utils/export_dependency.dart';
import '../../../widget/wave_clip.dart';
import '../near_by/near_by_view.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Text(
          "Settings",
          style: AppStyle.appBarTitleTextStyle,
        ),
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
              padding: EdgeInsets.only(
                  left: AppDimens.width20, right: AppDimens.width20),
              child: ListView(
                physics: const ClampingScrollPhysics(),
                children: [
                  SizedBox(
                    height: AppDimens.height8,
                  ),
                  Container(
                    margin: EdgeInsets.all(AppDimens.width5),
                    padding: EdgeInsets.only(
                        left: AppDimens.width100,
                        top: AppDimens.height10,
                        bottom: AppDimens.width20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppDimens.radius10),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                AppImage.userImage,
                                fit: BoxFit.fill,
                                height: AppDimens.height100,
                                width: AppDimens.height100,
                              ),
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              fillColor: const Color(0XFFF0F0F0),
                              padding: EdgeInsets.all(AppDimens.height10),
                              shape: const CircleBorder(),
                              child: Image.asset(
                                AppImage.editIcon,
                                height: AppDimens.height15,
                                width: AppDimens.height15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: AppDimens.height110,
                          child: Text(
                            "Full Name",
                            style: AppStyle.userTextStyle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "test@mail.com",
                          style: AppStyle.userEmailTextStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "+91 9999 999999",
                          style: AppStyle.userEmailTextStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppDimens.height25,
                  ),
                  Text(
                    "Account Settings",
                    style: AppStyle.accountSettingTitleTextStyle,
                  ),
                  SizedBox(
                    height: AppDimens.height25,
                  ),
                  NearByListTile(
                      image: AppImage.bookingIcon,
                      title: "My Booking",
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.myBookingScreen);
                      }),
                  NearByListTile(
                      image: AppImage.historyIcon, title: "Booking History"),
                  NearByListTile(
                    image: AppImage.mobileIcon,
                    title: "Change Mobile Number",
                  ),
                  NearByListTile(
                    image: AppImage.pinIcon,
                    title: "Change M-PIN",
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.changeMpinScreen);
                    },
                  ),
                  NearByListTile(
                      image: AppImage.settingMenuIcon, title: "Settings"),
                  NearByListTile(image: AppImage.logoutIcon, title: "Log out"),
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
