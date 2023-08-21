import 'package:shared_preferences/shared_preferences.dart';
import '../core_utils/strings.dart';
import '../network/models/login_response.dart';
import '../network/models/response/cams/cams_login_response.dart';
import '../network/models/response/profile/update_profile_response.dart';
import '../network/models/response/site_access/site_access_login_response.dart';
import '../network/models/user_details.dart';

class PreferenceUtils {
  static String? userImage;
  static String? userToken;
  var time = DateTime;

  static Future<SharedPreferences> get _instance async =>
      _prefsInstance ??= await SharedPreferences.getInstance();

  static SharedPreferences? _prefsInstance;

  static Future<SharedPreferences?> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance;
  }

  static String? getString(String key, [String? defValue]) {
    if (PreferenceUtils._prefsInstance != null) {
      return _prefsInstance?.getString(key) ?? defValue ?? "";
    }
    return null;
  }

  static Future<bool> setString(String key, String value) async {
    var prefs = await _instance;
    return prefs.setString(key, value); //?? Future.value(null);
  }

  static Future<bool> setStringList(String key, var value) async {
    var prefs = await _instance;
    return prefs.setStringList(key, value); //?? Future.value(null);
  }

  static Future<bool> setBool(String key, bool value) async {
    var prefs = await _instance;
    return prefs.setBool(key, value); //?? Future.value(null);
  }

  static bool getBool(String key, [bool? defValue]) {
    return _prefsInstance?.getBool(key) ?? defValue ?? false;
  }

  static List getStringList(String key, [bool? defValue]) {
    return _prefsInstance?.getStringList(key) ?? [defValue];
  }

  static Future<bool> setInt(String key, int value) async {
    var prefs = await _instance;
    return prefs.setInt(key, value); //?? Future.value(null);
  }

  static int getInt(String key, [int? defValue]) {
    return _prefsInstance?.getInt(key) ?? defValue ?? 0;
  }

  static Future setUploadImage(uploadProfilePictureResponse) async {
    PreferenceUtils.setString(
        Strings.filePath, uploadProfilePictureResponse.data!.message!);
  }

  static Future setUserImage(image) async {
    await PreferenceUtils.setString(Strings.userImageKey, image ?? "");
  }

  static String? getUserImage() {
    userImage = PreferenceUtils.getString(Strings.userImageKey)!;
    return userImage;
  }

  static String? getUserToken() {
    return PreferenceUtils.getString(Strings.suretekToken) ?? "";
  }

  // CAMS Details
  static String? getCAMSUserToken() {
    return PreferenceUtils.getString(Strings.camsToken) ?? "";
  }

  static String? getCAMSAppUrl() {
    return PreferenceUtils.getString(Strings.apiUrl) ?? "";
  }

  static String? getCAMSServiceId() {
    return PreferenceUtils.getString(Strings.camsServiceID) ?? "";
  }

  static String? getServiceJobID() {
    return PreferenceUtils.getString(Strings.serviceJobID) ?? "";
  }

  static String? getCAMSName() {
    return PreferenceUtils.getString(Strings.camsName) ?? "";
  }

  static String? getCAMSBaseAssetID() {
    return PreferenceUtils.getString(Strings.baseAssetID) ?? "";
  }

  static String? getCAMSBureauId() {
    return PreferenceUtils.getString(Strings.bureauId) ?? "";
  }

  static String? getCAMSAssetNo() {
    return PreferenceUtils.getString(Strings.assetNo) ?? "";
  }

  static String? getCompanyName() {
    return PreferenceUtils.getString(Strings.companyName) ?? "";
  }

  static String? getJobAssetName() {
    return PreferenceUtils.getString(Strings.jobAssetName) ?? "";
  }

  //SiteAccess
  static String? getSiteAccessAppUrl() {
    return PreferenceUtils.getString(Strings.siteAccessApiUrl) ?? "";
  }

  static String? getSiteAccessServiceId() {
    return PreferenceUtils.getString(Strings.siteAccessServiceId) ?? "";
  }

  static String? getSiteAccessBaseAssetID() {
    return PreferenceUtils.getString(Strings.siteAccessBaseAssetID);
  }

  static String? getSiteAccessAdminUserEmail() {
    return PreferenceUtils.getString(Strings.siteAccessAdminUserEmail) ?? "";
  }

  static String? getSiteAccessBureauId() {
    return PreferenceUtils.getString(Strings.siteAccessBureauId) ?? "";
  }

  static String? getSiteAccessAssetNo() {
    return PreferenceUtils.getString(Strings.siteAccessAssetNo) ?? "";
  }

  static String? getSiteAccessAssetName() {
    return PreferenceUtils.getString(Strings.setSiteAccessAssetName) ?? "";
  }

  static String? getSiteAccessAccessStartDate() {
    return PreferenceUtils.getString(Strings.siteAccessAccessStartDateTime) ??
        "";
  }

  static String? getSiteAccessId() {
    return PreferenceUtils.getString(Strings.siteAccessId) ?? "";
  }

  static String? getSiteAccessCamsName() {
    return PreferenceUtils.getString(Strings.siteAccessCamsName) ?? "";
  }

  static String? getSiteAccessAccessEndDate() {
    return PreferenceUtils.getString(Strings.siteAccessAccessEndDateTime) ?? "";
  }

  static String? getUserFirstName() {
    return PreferenceUtils.getString(Strings.firstName) ?? "";
  }

  static String? getUserLastName() {
    return PreferenceUtils.getString(Strings.lastName) ?? "";
  }

  static String? getUserEmail() {
    return PreferenceUtils.getString(Strings.email) ?? "";
  }

  static String? getAdminSiteBureauId() {
    return PreferenceUtils.getString(Strings.adminSiteBureauId) ?? "";
  }

  static String? getAdminSiteAppUrl() {
    return PreferenceUtils.getString(Strings.adminSiteAppUrl) ?? "";
  }

  static Future setLoginResponse(LoginResponse loginResponse) async {
    await PreferenceUtils.setString(
        Strings.firstName, loginResponse.data!.first.firstName ?? "");
    await PreferenceUtils.setString(
        Strings.lastName, loginResponse.data!.first.lastName ?? "");
    await PreferenceUtils.setString(
        Strings.email, loginResponse.data!.first.email ?? "");
    await PreferenceUtils.setString(
        Strings.phone, loginResponse.data!.first.phone ?? "");
    await PreferenceUtils.setString(
        Strings.address, loginResponse.data!.first.address ?? "");
    await PreferenceUtils.setString(
        Strings.address2, loginResponse.data!.first.address2 ?? "");
    await PreferenceUtils.setString(
        Strings.city, loginResponse.data!.first.city ?? "");
    await PreferenceUtils.setString(
        Strings.state, loginResponse.data!.first.state ?? "");
    await PreferenceUtils.setString(
        Strings.postcode, loginResponse.data!.first.postcode ?? "");
    await PreferenceUtils.setString(
        Strings.companyName, loginResponse.data!.first.companyName ?? "");
    await PreferenceUtils.setString(
        Strings.suretekToken, loginResponse.data!.first.suretekToken ?? "");
  }

  static Future setUpdateProfileResponse(
      UpdateProfileResponse loginResponse) async {
    await PreferenceUtils.setString(
        Strings.firstName, loginResponse.data!.first.firstName ?? "");
    await PreferenceUtils.setString(
        Strings.lastName, loginResponse.data!.first.lastName ?? "");
    await PreferenceUtils.setString(
        Strings.email, loginResponse.data!.first.email ?? "");
    await PreferenceUtils.setString(
        Strings.phone, loginResponse.data!.first.phone ?? "");
    await PreferenceUtils.setString(
        Strings.address, loginResponse.data!.first.address ?? "");
    await PreferenceUtils.setString(
        Strings.address2, loginResponse.data!.first.address2 ?? "");
    await PreferenceUtils.setString(
        Strings.city, loginResponse.data!.first.city ?? "");
    await PreferenceUtils.setString(
        Strings.state, loginResponse.data!.first.state ?? "");
    await PreferenceUtils.setString(
        Strings.postcode, loginResponse.data!.first.postcode ?? "");
    await PreferenceUtils.setString(
        Strings.companyName, loginResponse.data!.first.companyName ?? "");
  }

  static Future<UserProfileView> getUserProfile() async {
    var firstName = PreferenceUtils.getString(Strings.firstName);
    var lastName = PreferenceUtils.getString(Strings.lastName);
    var email = PreferenceUtils.getString(Strings.email);
    var phone = PreferenceUtils.getString(Strings.phone);
    var address = PreferenceUtils.getString(Strings.address);
    var address2 = PreferenceUtils.getString(Strings.address2);
    var city = PreferenceUtils.getString(Strings.city);
    var state = PreferenceUtils.getString(Strings.state);
    var postcode = PreferenceUtils.getString(Strings.postcode);
    var companyName = PreferenceUtils.getString(Strings.companyName);
    UserProfileView userDetails = UserProfileView(
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        email: email,
        companyName: companyName,
        address: address,
        address2: address2,
        city: city,
        state: state,
        postcode: postcode);
    return userDetails;
  }

  static clearPreferences() {
    _prefsInstance?.clear();
  }

// set CAMS
  static Future setCAMSToken(List<CamsLogin>? data) async {
    await PreferenceUtils.setString(
        Strings.camsToken, data!.first.camsToken ?? "");
  }

  static Future setCAMSAppUrl(String apiUrl) async {
    await PreferenceUtils.setString(Strings.apiUrl, apiUrl);
  }

  static Future setCAMSServiceId(String camsServiceID) async {
    await PreferenceUtils.setString(Strings.camsServiceID, camsServiceID);
  }

  static Future setServiceJobID(String camsServiceID) async {
    await PreferenceUtils.setString(Strings.serviceJobID, camsServiceID);
  }

  static Future setCAMSName(String camsName) async {
    await PreferenceUtils.setString(Strings.camsName, camsName);
  }

  static Future setCAMSBureauId(String bureauId) async {
    await PreferenceUtils.setString(Strings.bureauId, bureauId);
  }

  static Future setCAMSAssetNo(String assetNo) async {
    await PreferenceUtils.setString(Strings.assetNo, assetNo);
  }

  static Future setCAMSAssetID(String assetId) async {
    await PreferenceUtils.setString(Strings.baseAssetID, assetId);
  }

  static Future setJobAssetName(String apiUrl) async {
    await PreferenceUtils.setString(Strings.jobAssetName, apiUrl);
  }

  // set Site Access
  static Future setSiteAccessToken(List<SiteAccessLogin>? data) async {
    await PreferenceUtils.setString(
        Strings.camsToken, data!.first.camsToken ?? "");
  }

  static Future setSiteAccessAppUrl(String apiUrl) async {
    await PreferenceUtils.setString(Strings.siteAccessApiUrl, apiUrl);
  }

  static Future setSiteAccessServiceId(String serviceId) async {
    await PreferenceUtils.setString(Strings.siteAccessServiceId, serviceId);
  }

  static Future setSiteAccessBureauId(String bureauId) async {
    await PreferenceUtils.setString(Strings.siteAccessBureauId, bureauId);
  }

  static Future setSiteAccessAssetNo(String assetNo) async {
    await PreferenceUtils.setString(Strings.siteAccessAssetNo, assetNo);
  }

  static Future setSiteAccessAssetName(String assetName) async {
    await PreferenceUtils.setString(Strings.setSiteAccessAssetName, assetName);
  }

  static Future setSiteAccessBaseAssetID(String assetId) async {
    await PreferenceUtils.setString(Strings.siteAccessBaseAssetID, assetId);
  }

  static Future setSiteAccessAdminUserEmail(String email) async {
    await PreferenceUtils.setString(Strings.siteAccessAdminUserEmail, email);
  }

  static Future setSiteAccessAccessEndDateTime(String date) async {
    await PreferenceUtils.setString(Strings.siteAccessAccessEndDateTime, date);
  }

  static Future setSiteAccessAccessStartDateTime(String date) async {
    await PreferenceUtils.setString(
        Strings.siteAccessAccessStartDateTime, date);
  }

  static Future setSiteAccessID(String date) async {
    await PreferenceUtils.setString(Strings.siteAccessId, date);
  }

  static Future setSiteAccessCamsName(String date) async {
    await PreferenceUtils.setString(Strings.siteAccessCamsName, date);
  }

  static Future setAdminSiteBureauId(String bureauId) async {
    await PreferenceUtils.setString(Strings.adminSiteBureauId, bureauId);
  }

  static Future setAdminSiteAppUrl(String bureauId) async {
    await PreferenceUtils.setString(Strings.adminSiteAppUrl, bureauId);
  }
}
