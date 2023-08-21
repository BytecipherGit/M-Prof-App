class SiteAccessInstallationDetailsResponse {
  int? status;
  String? message;
  List<CamsInstallationDetails>? data;

  SiteAccessInstallationDetailsResponse({
    this.status,
    this.message,
    this.data,
  });

  factory SiteAccessInstallationDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      SiteAccessInstallationDetailsResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<CamsInstallationDetails>.from(
                json["data"].map((x) => CamsInstallationDetails.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class CamsInstallationDetails {
  String? alarmPanel;
  String? addonPanel;
  String? commsDevice;
  String? commsDeviceSerial;
  String? powerLocation;
  String? panelLocation;
  String? installerPin;

  CamsInstallationDetails({
    this.alarmPanel,
    this.addonPanel,
    this.commsDevice,
    this.commsDeviceSerial,
    this.powerLocation,
    this.panelLocation,
    this.installerPin,
  });

  factory CamsInstallationDetails.fromJson(Map<String, dynamic> json) =>
      CamsInstallationDetails(
        alarmPanel: json["alarmPanel"],
        addonPanel: json["addonPanel"],
        commsDevice: json["commsDevice"],
        commsDeviceSerial: json["commsDeviceSerial"],
        powerLocation: json["powerLocation"],
        panelLocation: json["panelLocation"],
        installerPin: json["installerPIN"],
      );

  Map<String, dynamic> toJson() => {
        "alarmPanel": alarmPanel,
        "addonPanel": addonPanel,
        "commsDevice": commsDevice,
        "commsDeviceSerial": commsDeviceSerial,
        "powerLocation": powerLocation,
        "panelLocation": panelLocation,
        "installerPIN": installerPin,
      };
}
