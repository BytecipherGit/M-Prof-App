import 'package:google_fonts/google_fonts.dart';
import 'package:m_proof/src/widget/new_rounded_button.dart';
import '../core_utils/export_dependency.dart';
import '../helpers/routes/route_name.dart';
import '../local_cache/preference_utils.dart';

class LogOutDialogue {
  static showDialogue(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          contentPadding: EdgeInsets.only(
              left: AppDimens.width10,
              top: AppDimens.height10,
              bottom: AppDimens.height10),
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(AppDimens.radius10))),
          content: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              Center(
                child: Text(
                  'Log Out',
                  style: GoogleFonts.poppins(
                      fontSize: AppDimens.fontSize16,
                      color: const Color(0xFF5E5E5E),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: AppDimens.height10,
              ),
              Center(
                child: Text(
                  'Are you sure you want to Log Out ?',
                  style: GoogleFonts.poppins(
                      fontSize: AppDimens.fontSize14,
                      color: const Color(0xff878787),
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: AppDimens.height10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: AppDimens.width100,
                    height: AppDimens.height30,
                    child: MaterialButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        Navigator.pop(dialogContext);
                      },
                    ),
                  ),
                  SizedBox(
                    width: AppDimens.width100,
                    height: AppDimens.height30,
                    child: NewRoundedButton(
                      text: "Log Out",
                      onPressedFunction: () {
                        PreferenceUtils.clearPreferences();
                        Navigator.pop(context);
                        Navigator.pushNamedAndRemoveUntil(
                            context, RouteName.loginScreen, (route) => false);
                      },
                      color: AppColors.primaryColor,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

class BookingConfirmationDialogue {
  static showDialogue(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          contentPadding: EdgeInsets.only(bottom: AppDimens.height10),
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(AppDimens.radius10))),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                height: AppDimens.height10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppDimens.radius10),
                      topRight: Radius.circular(AppDimens.radius10),
                    ),
                    gradient: const LinearGradient(colors: [
                      Color(0XFF07875E),
                      Color(0XFF0CB28A),
                    ])),
              ),
              Container(
                height: AppDimens.height150,
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: AppDimens.width30),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImage.successImage),
                        fit: BoxFit.fitWidth)),
              ),
              SizedBox(
                height: AppDimens.height10,
              ),
              Center(
                child: Text(
                  "Booking Successful...",
                  style: AppStyle.signInTextStyle
                      .copyWith(fontSize: AppDimens.fontSize20),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: AppDimens.height20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "The Barber Shop",
                      style: AppStyle.signInTextStyle
                          .copyWith(fontSize: AppDimens.fontSize20),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppImage.locationIcon,
                          height: AppDimens.height15,
                          width: AppDimens.height15,
                        ),
                        SizedBox(
                          width: AppDimens.width8,
                        ),
                        Text(
                          "KIAL Rd, Bengaluru, Karnataka 560300",
                          style: AppStyle.vendorTypeTextStyle.copyWith(
                              fontSize: AppDimens.fontSize12,
                              color: const Color(0XFF686868)),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Container(
                      height: AppDimens.height10,
                    ),
                    Text(
                      "Service",
                      style: AppStyle.signInTextStyle
                          .copyWith(fontSize: AppDimens.fontSize16),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    Text(
                      "Haircut for Men",
                      style: AppStyle.vendorTypeTextStyle.copyWith(
                          fontSize: AppDimens.fontSize12,
                          color: const Color(0XFF686868)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height5,
                    ),
                    Text(
                      "Haircut for Women",
                      style: AppStyle.vendorTypeTextStyle.copyWith(
                          fontSize: AppDimens.fontSize12,
                          color: const Color(0XFF686868)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height5,
                    ),
                    Text(
                      "Beard Haircut",
                      style: AppStyle.vendorTypeTextStyle.copyWith(
                          fontSize: AppDimens.fontSize12,
                          color: const Color(0XFF686868)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    Text(
                      "Time & Day Slot",
                      style: AppStyle.signInTextStyle
                          .copyWith(fontSize: AppDimens.fontSize16),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    Text(
                      "02:30 PM - 02:50 PM",
                      style: AppStyle.vendorTypeTextStyle.copyWith(
                          fontSize: AppDimens.fontSize12,
                          color: const Color(0XFF686868)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height5,
                    ),
                    Text(
                      "Monday - 12 March 2023",
                      style: AppStyle.vendorTypeTextStyle.copyWith(
                          fontSize: AppDimens.fontSize12,
                          color: const Color(0XFF686868)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height25,
                    ),
                    NewRoundedButton(
                      color: AppColors.primaryColor,
                      text: "Done",
                      textColor: AppColors.whiteColor,
                      onPressedFunction: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, RouteName.bottomNavBar, (route) => false);
                      },
                    ),
                    SizedBox(
                      height: AppDimens.height20,
                    ),
                    Center(
                      child: Text(
                        "Render in...10s",
                        style: AppStyle.signInTextStyle
                            .copyWith(fontSize: AppDimens.fontSize14),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class BookingAlertDialogue {
  static showDialogue(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          contentPadding: EdgeInsets.only(bottom: AppDimens.height10),
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(AppDimens.radius10))),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                height: AppDimens.height10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppDimens.radius10),
                      topRight: Radius.circular(AppDimens.radius10),
                    ),
                    gradient: const LinearGradient(colors: [
                      Color(0XFFF0B732),
                      Color(0XFFF0B530),
                      Color(0XFFF5D248),
                    ])),
              ),
              SizedBox(
                height: AppDimens.height10,
              ),
              Container(
                height: AppDimens.height100,
                padding: EdgeInsets.symmetric(vertical: AppDimens.height20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImage.alertImage))),
              ),
              SizedBox(
                height: AppDimens.height20,
              ),
              Center(
                child: Text(
                  "Booking Alert",
                  style: AppStyle.signInTextStyle
                      .copyWith(fontSize: AppDimens.fontSize20),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: AppDimens.height10,
              ),
              Center(
                child: Text(
                  "1 Day Remaining....",
                  style: AppStyle.signInTextStyle
                      .copyWith(fontSize: AppDimens.fontSize16),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: AppDimens.height20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "The Barber Shop",
                      style: AppStyle.signInTextStyle
                          .copyWith(fontSize: AppDimens.fontSize20),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppImage.locationIcon,
                          height: AppDimens.height15,
                          width: AppDimens.height15,
                        ),
                        SizedBox(
                          width: AppDimens.width8,
                        ),
                        Text(
                          "KIAL Rd, Bengaluru, Karnataka 560300",
                          style: AppStyle.vendorTypeTextStyle.copyWith(
                              fontSize: AppDimens.fontSize12,
                              color: const Color(0XFF686868)),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Container(
                      height: AppDimens.height10,
                    ),
                    Text(
                      "Time & Day Slot",
                      style: AppStyle.signInTextStyle
                          .copyWith(fontSize: AppDimens.fontSize16),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    Text(
                      "02:30 PM - 02:50 PM",
                      style: AppStyle.vendorTypeTextStyle.copyWith(
                          fontSize: AppDimens.fontSize12,
                          color: const Color(0XFF686868)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height5,
                    ),
                    Text(
                      "Monday - 12 March 2023",
                      style: AppStyle.vendorTypeTextStyle.copyWith(
                          fontSize: AppDimens.fontSize12,
                          color: const Color(0XFF686868)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: AppStyle.filterTextTextStyle
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          width: AppDimens.width150,
                          height: AppDimens.height45,
                          child: NewRoundedButton(
                            color: AppColors.primaryColor,
                            text: "View Details",
                            textColor: AppColors.whiteColor,
                            onPressedFunction: () {},
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
