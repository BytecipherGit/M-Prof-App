import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_dimens.dart';

class AppStyle {
  static TextStyle bottomNavBarUnSelectedTextStyle = TextStyle(
    color: AppColors.placeholderColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle bottomNavBarSelectedTextStyle = TextStyle(
    color: AppColors.primaryColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );

  //////////////////

  static TextStyle appBarTitleTextStyle = TextStyle(
    color: AppColors.appBarTitleTextColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
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
      fontWeight: FontWeight.w400,
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
    fontWeight: FontWeight.w400,
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
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle vendorTypeTextStyle = TextStyle(
    color: AppColors.vendorTypeTextColor,
    fontSize: AppDimens.fontSize12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy-Medium',
  );
  static TextStyle listTileTitleTextStyle = TextStyle(
    color: AppColors.skipTextColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy-Medium',
  );
  static TextStyle labelTitleTextStyle = TextStyle(
    color: AppColors.labelTitleTextColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle accountSettingTitleTextStyle = TextStyle(
    color: AppColors.signInTextColor,
    fontSize: AppDimens.fontSize18,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle userTextStyle = TextStyle(
    color: AppColors.vendorNameTextColor,
    fontSize: AppDimens.fontSize22,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle userEmailTextStyle = TextStyle(
    color: AppColors.vendorTypeTextColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy-Medium',
  );
  static TextStyle bookingStatusTextTextStyle = TextStyle(
    fontSize: AppDimens.fontSize8,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy-Medium',
  );
  static TextStyle filterTextTextStyle = TextStyle(
    color: AppColors.vendorWorkingHourTitleTextColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle barberTitleTextTextStyle = TextStyle(
    color: AppColors.barberTitleTextColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy-Medium',
  );
  static TextStyle specializationTitleTextTextStyle = TextStyle(
    color: AppColors.specializationTitleTextColor,
    fontSize: AppDimens.fontSize14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy-Medium',
  );
  static TextStyle reviewCommentTextTextStyle = TextStyle(
    color: AppColors.reviewCommentTextColor,
    fontSize: AppDimens.fontSize16,
    fontFamily: 'Gilroy-Regular',
  );
  static TextStyle reviewTimeAgoTextTextStyle = TextStyle(
    color: AppColors.reviewTimeAgoTextColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy-Medium',
  );
  static TextStyle reviewerNameTextStyle = TextStyle(
    color: AppColors.reviewerNameTextColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle hospitalSpecializationTitleTextStyle = TextStyle(
    color: AppColors.skipTextColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy-Medium',
  );
  static TextStyle patientCountTextStyle = TextStyle(
    color: AppColors.hiddenMobileTextColor,
    fontSize: AppDimens.fontSize20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Gilroy-SemiBold',
  );
  static TextStyle patientTitleTextStyle = TextStyle(
    color: AppColors.skipTextColor,
    fontSize: AppDimens.fontSize16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy-Medium',
  );
}
