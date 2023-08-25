class AppNetworkUrls {
  static const _baseUrl = 'http://192.168.1.65:8000';
  static get baseUrl => _baseUrl;
  static const loginEndPint = '$_baseUrl/api/login';
  static const registerApiEndPoint = '$_baseUrl/api/register';
  static const verifyRegisterOTPApiEndPoint = '$_baseUrl/api/verify-register-otp';
  static const verifyLoginOTPApiEndPoint = '$_baseUrl/api/verify-login-otp';
  static const forgotPasswordApiEndPoint = '$_baseUrl/sendOTP';
  static const resetPasswordApiEndPoint = '$_baseUrl/resetPassword';
  static const changePasswordApiEndPoint = '$_baseUrl/changePassword';
  static const updateProfileApiEndPoint = '$_baseUrl/updateProfile';
  static const deleteProfileApiEndPoint = '$_baseUrl/deleteProfile';
  static const addUserDeviceApiEndPoint = '$_baseUrl/addUserDevice';
  static const userJobListApiEndPoint = '$_baseUrl/userJobList';
  static const userNotificationListApiEndPoint = '$_baseUrl/notificationList';
  static const userNotificationUpdateReadTimeApiEndPoint =
      '$_baseUrl/notificationsUpdateReadTime';
  static const siteAccessListApiEndPoint = '$_baseUrl/userSiteAccessList';
  static const adminCMSSiteAccessListApiEndPoint =
      '$_baseUrl/adminCMSSiteAccess';
  static const adminServiceJobListApiEndPoint = '$_baseUrl/adminJobList';

  static const alarmHistoryListApiEndPoint = '/getAlarmHistory';
  static const serviceJobDetailsApiEndPoint = '/getServiceJobDetails';
  static const installationApiEndPoint = '/getInstallation';
  static const zonesApiEndPoint = '/getZones';
  static const jobOutcomeListApiEndPoint = '/getJobOutcomeList';
  static const serviceHistoryApiEndPoint = '/getServiceHistory';
  static const assetListApiEndPoint = '/getAssetList';
  static const assetDetailsApiEndPoint = '/getAssetDetails';
  static const setServiceETAApiEndPoint = '/setServiceETA';
  static const techOnSiteApiEndPoint = '/techOnSite';
  static const techOffSiteApiEndPoint = '/techOffSite';
  static const techSetOnTestApiEndPoint = '/setOnTest';
  static const setServiceNotesApiEndPoint = '/setServiceNotes';
  static const techLinkFinaliseServiceJobApiEndPoint = '/techLinkFinaliseServiceJob';
  static const serviceJobUsedApiEndPoint = '$_baseUrl/serviceJobUsed';
  static const serviceJobScheduleApiEndPoint = '$_baseUrl/serviceJobSchedule';
  static const emailExistsApiEndPoint = '$_baseUrl/emailExists';
  static const sendEmailApiEndPoint = '$_baseUrl/sendEmail';

  //site access end point

  static const getAssetDetailsApiEndPoint = '/getAssetDetails';
  static const siteAccessUsedApiEndPoint = '$_baseUrl/siteAccessUsed';

  // Administrator Api End Points
  static const getAdminCMSListApiEndPoint = '$_baseUrl/AdminCMSList';
  static const getMyTechLinkUsersApiEndPoint = '$_baseUrl/myTechLinkUsers';
  static const setSiteAccessAddApiEndPoint = '$_baseUrl/siteAccessAdd';
  static const siteAccessEditApiEndPoint = '$_baseUrl/siteAccessEdit';
  static const siteAccessDeleteApiEndPoint = '$_baseUrl/siteAccessDelete';
  static const serviceJobReassignApiEndPoint = '$_baseUrl/serviceJobReassign';
  static const adminCMSAssetListApiEndPoint = '/getAssetList';
}

class AppHeaders {
  Map<String, String> header = {"Content-Type": "application/json"};

  Map<String, String> headers = {
    "Content-Type": "application/json",
    "api-version": "1"
  };

  Map<String, String> secureHeaders = {
    "Content-Type": "application/json",
    "api-version": "1",
    "Authorization": ""
  };
}
