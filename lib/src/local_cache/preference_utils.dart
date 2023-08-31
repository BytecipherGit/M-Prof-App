import 'package:shared_preferences/shared_preferences.dart';
import '../core_utils/strings.dart';
import '../network/models/response/auth/user_response.dart';

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

  static String? getUserAccessToken() {
    return PreferenceUtils.getString(Strings.accessToken) ?? "";
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

  static String? getUserName() {
    return PreferenceUtils.getString(Strings.name) ?? "";
  }

  static String? getUserEmail() {
    return PreferenceUtils.getString(Strings.email) ?? "";
  }

  static String? getUserPhone() {
    return PreferenceUtils.getString(Strings.phoneNumber) ?? "";
  }

  static String? getCountryCode() {
    return PreferenceUtils.getString(Strings.countryCode) ?? "";
  }

  static Future setUserResponse(UserResponse userResponse) async {
    await PreferenceUtils.setString(
        Strings.name, userResponse.data!.name ?? "");
    await PreferenceUtils.setString(
        Strings.email, userResponse.data!.email ?? "");
    await PreferenceUtils.setString(
        Strings.phoneNumber, userResponse.data!.phoneNumber ?? "");
    await PreferenceUtils.setString(
        Strings.category, userResponse.data!.category ?? "");
    await PreferenceUtils.setString(
        Strings.address, userResponse.data!.address ?? "");
    await PreferenceUtils.setString(Strings.lat, userResponse.data!.lat ?? "");
    await PreferenceUtils.setString(Strings.lng, userResponse.data!.lng ?? "");
    await PreferenceUtils.setString(
        Strings.countryCode, userResponse.data!.countryCode ?? "");
    await PreferenceUtils.setString(
        Strings.accessToken, userResponse.accessToken ?? "");
  }

  static Future setUpdateProfileResponse(UserResponse userResponse) async {
    await PreferenceUtils.setString(
        Strings.name, userResponse.data!.name ?? "");
    await PreferenceUtils.setString(
        Strings.email, userResponse.data!.email ?? "");
    await PreferenceUtils.setString(
        Strings.phoneNumber, userResponse.data!.phoneNumber ?? "");
    await PreferenceUtils.setString(
        Strings.category, userResponse.data!.category ?? "");
    await PreferenceUtils.setString(
        Strings.address, userResponse.data!.address ?? "");
    await PreferenceUtils.setString(Strings.lat, userResponse.data!.lat ?? "");
    await PreferenceUtils.setString(Strings.lng, userResponse.data!.lng ?? "");
    await PreferenceUtils.setString(
        Strings.countryCode, userResponse.data!.countryCode ?? "");
  }

  // static Future<UserProfileView> getUserProfile() async {
  //   var name = PreferenceUtils.getString(Strings.name);
  //   var email = PreferenceUtils.getString(Strings.email);
  //   var phone = PreferenceUtils.getString(Strings.phoneNumber);
  //   var address = PreferenceUtils.getString(Strings.address);
  //   var lat = PreferenceUtils.getString(Strings.lat);
  //   var city = PreferenceUtils.getString(Strings.city);
  //   var state = PreferenceUtils.getString(Strings.state);
  //   var postcode = PreferenceUtils.getString(Strings.postcode);
  //   var companyName = PreferenceUtils.getString(Strings.companyName);
  //   UserProfileView userDetails = UserProfileView(
  //       firstName: name,
  //       phone: phone,
  //       email: email,
  //       companyName: companyName,
  //       address: address,
  //       lat: lat,
  //       city: city,
  //       state: state,
  //       postcode: postcode);
  //   return userDetails;
  // }

  static clearPreferences() {
    _prefsInstance?.clear();
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
