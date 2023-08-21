import 'dart:convert';

SiteAccessResponse siteAccessResponseFromJson(String str) =>
    SiteAccessResponse.fromJson(json.decode(str));

String siteAccessResponseToJson(SiteAccessResponse data) =>
    json.encode(data.toJson());

class SiteAccessResponse {
  int? status;
  String? message;
  List<SiteAccessList>? data;

  SiteAccessResponse({
    this.status,
    this.message,
    this.data,
  });

  factory SiteAccessResponse.fromJson(Map<String, dynamic> json) =>
      SiteAccessResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<SiteAccessList>.from(
                json["data"].map((x) => SiteAccessList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class SiteAccessList {
  String? siteAccessId;
  String? apiUrl;
  String? camsCmsid;
  String? camsBureauId;
  String? camsBaseAssetId;
  String? camsBaseAssetNo;
  String? camsAssetName;
  String? camsAssetAddress;
  String? accessStart;
  String? accessEnd;
  String? adminUserEmail;
  String? lastAccessed;
  String? camsName;

  SiteAccessList({
    this.siteAccessId,
    this.apiUrl,
    this.camsCmsid,
    this.camsBureauId,
    this.camsBaseAssetId,
    this.camsBaseAssetNo,
    this.camsAssetName,
    this.camsAssetAddress,
    this.accessStart,
    this.accessEnd,
    this.adminUserEmail,
    this.lastAccessed,
    this.camsName,
  });

  factory SiteAccessList.fromJson(Map<String, dynamic> json) => SiteAccessList(
        siteAccessId: json["siteAccessID"],
        apiUrl: json["apiURL"],
        camsCmsid: json["camsCMSID"],
        camsBureauId: json["camsBureauID"],
        camsBaseAssetId: json["camsBaseAssetID"],
        camsBaseAssetNo: json["camsBaseAssetNo"],
        camsAssetName: json["camsAssetName"],
        camsAssetAddress: json["camsAssetAddress"],
        accessStart: json["accessStart"],
        accessEnd: json["accessEnd"],
        adminUserEmail: json["adminUserEmail"],
        lastAccessed: json["lastAccessed"],
        camsName: json["camsName"],
      );

  Map<String, dynamic> toJson() => {
        "siteAccessID": siteAccessId,
        "apiURL": apiUrl,
        "camsCMSID": camsCmsid,
        "camsBureauID": camsBureauId,
        "camsBaseAssetID": camsBaseAssetId,
        "camsBaseAssetNo": camsBaseAssetNo,
        "camsAssetName": camsAssetName,
        "camsAssetAddress": camsAssetAddress,
        "accessStart": accessStart,
        "accessEnd": accessEnd,
        "adminUserEmail": adminUserEmail,
        "lastAccessed": lastAccessed,
        "camsName": camsName,
      };
}
