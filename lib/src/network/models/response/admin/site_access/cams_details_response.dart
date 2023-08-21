class CamsDetailsResponse {
  int? status;
  String? message;
  List<CamsDetails>? data;

  CamsDetailsResponse({
    this.status,
    this.message,
    this.data,
  });

  factory CamsDetailsResponse.fromJson(Map<String, dynamic> json) =>
      CamsDetailsResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<CamsDetails>.from(
                json["data"].map((x) => CamsDetails.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class CamsDetails {
  String? camsName;
  String? camsBureauName;
  String? apiUrl;
  String? camsBureauId;
  String? camsAssetName;
  String? techLinkUserId;
  String? techLinkUserEmail;
  String? camsBaseAssetId;
  String? camsBaseAssetNo;
  String? camsAssetAddress;
  String? accessStart;
  String? accessEnd;
  String? siteAccessId;
  String? newSiteAccess;
  String? firstName;
  String? lastName;

  CamsDetails({
    this.camsName,
    this.camsBureauName,
    this.apiUrl,
    this.camsBureauId,
    this.camsAssetName,
    this.techLinkUserId,
    this.techLinkUserEmail,
    this.camsBaseAssetId,
    this.camsBaseAssetNo,
    this.camsAssetAddress,
    this.accessStart,
    this.accessEnd,
    this.siteAccessId,
    this.newSiteAccess,
    this.firstName,
    this.lastName,
  });

  factory CamsDetails.fromJson(Map<String, dynamic> json) => CamsDetails(
        camsName: json["camsName"],
        camsBureauName: json["camsBureauName"],
        apiUrl: json["apiURL"],
        camsBureauId: json["camsBureauID"],
        camsAssetName: json["camsAssetName"],
        techLinkUserId: json["techLinkUserID"],
        techLinkUserEmail: json["techLinkUserEmail"],
        camsBaseAssetId: json["camsBaseAssetID"],
        camsBaseAssetNo: json["camsBaseAssetNo"],
        camsAssetAddress: json["camsAssetAddress"],
        accessStart: json["accessStart"],
        accessEnd: json["accessEnd"],
        siteAccessId: json["siteAccessID"],
        newSiteAccess: json["newSiteAccess"],
        firstName: json["firstName"],
        lastName: json["lastName"],
      );

  Map<String, dynamic> toJson() => {
        "camsName": camsName,
        "camsBureauName": camsBureauName,
        "apiURL": apiUrl,
        "camsBureauID": camsBureauId,
        "camsAssetName": camsAssetName,
        "techLinkUserID": techLinkUserId,
        "techLinkUserEmail": techLinkUserEmail,
        "camsBaseAssetID": camsBaseAssetId,
        "camsBaseAssetNo": camsBaseAssetNo,
        "camsAssetAddress": camsAssetAddress,
        "accessStart": accessStart,
        "accessEnd": accessEnd,
        "siteAccessID": siteAccessId,
        "newSiteAccess": newSiteAccess,
        "firstName": firstName,
        "lastName": lastName,
      };
}
