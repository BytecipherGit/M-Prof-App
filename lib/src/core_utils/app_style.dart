import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_dimens.dart';

class AppStyle {
  static TextStyle bottomNavBarUnSelectedTextStyle = GoogleFonts.poppins(
    color: AppColors.placeholderColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bottomNavBarSelectedTextStyle = GoogleFonts.poppins(
    color: AppColors.primaryColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w500,
  );
  static TextStyle detailsTextStyle = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle subTitleTextStyle = GoogleFonts.poppins(
    color: AppColors.addressLineColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle descriptionTextStyle = GoogleFonts.poppins(
    color: AppColors.serviceTitleColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle addressLineTextStyle = GoogleFonts.poppins(
    color: AppColors.addressLineColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w500,
  );
  static TextStyle serviceTitleTextStyle = GoogleFonts.poppins(
    color: AppColors.serviceTitleColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle placeholderTextStyle = GoogleFonts.poppins(
    color: AppColors.placeholderColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle titleTextStyle = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle primaryTextStyle = GoogleFonts.poppins(
    color: AppColors.primaryColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w600,
  );
  static TextStyle buttonTextStyle = GoogleFonts.poppins(
    color: AppColors.placeholderColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle alarmTitleTextStyle = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headingTextStyle = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle noPermissionTextStyle = GoogleFonts.poppins(
    color: AppColors.redColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle loginButtonTextStyle = GoogleFonts.poppins(
    color: AppColors.primaryColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle zoneTitleTextStyle = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle rawDataTextStyle = GoogleFonts.poppins(
    color: AppColors.greyColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle containerHeadingTextStyle = GoogleFonts.poppins(
    color: AppColors.primaryColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle appBarTextStyle = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: AppDimens.fontSize18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle lastAccessTextStyle = GoogleFonts.poppins(
    color: AppColors.greyColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w500,
  );
  static TextStyle jobListTimeTextStyle = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle zoneDescriptionTextStyle = GoogleFonts.poppins(
    color: AppColors.primaryColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle popUpDescriptionTextStyle = GoogleFonts.poppins(
      fontSize: AppDimens.fontSize14,
      color: const Color(0xff878787),
      fontWeight: FontWeight.w400);
  static TextStyle addSiteAccessTextTextStyle = GoogleFonts.poppins(
    color: AppColors.primaryColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle homeTitleTextTextStyle = GoogleFonts.poppins(
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle buttonTextTextStyle = GoogleFonts.poppins(
    color: Colors.white,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w500,
  );
  static TextStyle timeAgoTextStyle = GoogleFonts.poppins(
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w400,
  );
  static TextStyle notificationTitleTextStyle = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle notificationSubTitleTextStyle = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w400,
  );

  //////////////////

  static TextStyle signUpTextStyle = TextStyle(
      color: AppColors.signUpTextColor,
      fontSize: AppDimens.fontSize16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Gilroy-SemiBold');

  static TextStyle doNotHaveAccountTextStyle = TextStyle(
      color: AppColors.doNotHaveAccountTextColor,
      fontSize: AppDimens.fontSize14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy-Medium');
  static TextStyle signInTextStyle = TextStyle(
      color: AppColors.signInTextColor,
      fontSize: AppDimens.fontSize22,
      fontWeight: FontWeight.w600,
      fontFamily: 'Gilroy-SemiBold');
  static TextStyle welcomeBackTextStyle = TextStyle(
      color: AppColors.welcomeBackTextColor,
      fontSize: AppDimens.fontSize14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy-Medium');
  static TextStyle hiddenMobileTextStyle = TextStyle(
      color: AppColors.hiddenMobileTextColor,
      fontSize: AppDimens.fontSize16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Gilroy-SemiBold');
  static TextStyle resendOTPTextStyle = TextStyle(
    color: AppColors.hiddenMobileTextColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
    decoration: TextDecoration.underline,
  );
  static TextStyle hintTextStyle = TextStyle(
      color: AppColors.hintTextColor,
      fontSize: AppDimens.fontSize16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy-Medium');
  static TextStyle skipTextStyle = TextStyle(
      color: AppColors.skipTextColor,
      fontSize: AppDimens.fontSize14,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
      fontFamily: 'Gilroy-Medium');
  static TextStyle greetingTextStyle = TextStyle(
      color: AppColors.greetingTextColor,
      fontSize: AppDimens.fontSize14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy-Medium');
  static TextStyle locationTextStyle = TextStyle(
      color: AppColors.locationTextColor,
      fontSize: AppDimens.fontSize16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Gilroy-Medium');

  static TextStyle categoryTextStyle = TextStyle(
    color: AppColors.categoryTextColor,
    fontSize: AppDimens.fontSize18,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle seeAllTextStyle = TextStyle(
    color: AppColors.seeAllTextColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy-Medium',
  );
  static TextStyle categoryTitleTextStyle = TextStyle(
    color: AppColors.categoryTitleTextColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Gilroy-Medium',
  );
  static TextStyle vendorStatusTextStyle = TextStyle(
    color: AppColors.vendorStatusTitleTextColor,
    fontSize: AppDimens.fontSize8,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle vendorWorkingHourTextStyle = TextStyle(
    color: AppColors.vendorWorkingHourTitleTextColor,
    fontSize: AppDimens.fontSize8,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle vendorNameTextStyle = TextStyle(
    color: AppColors.vendorNameTextColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle vendorTypeTextStyle = TextStyle(
    color: AppColors.vendorTypeTextColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Gilroy-Medium',
  );
}
