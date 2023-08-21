class EditSiteAccessRequest {
  String? camsBureauId;
  String? camsAssetName;
  String? techLinkUserEmail;
  String? camsBaseAssetId;
  String? camsBaseAssetNo;
  String? camsAssetAddress;
  String? accessStart;
  String? accessEnd;
  String? siteAccessId;
  String? camsCmsId;

  EditSiteAccessRequest(
      {this.camsBureauId,
      this.camsAssetName,
      this.techLinkUserEmail,
      this.camsBaseAssetId,
      this.camsBaseAssetNo,
      this.camsAssetAddress,
      this.accessStart,
      this.accessEnd,
      this.siteAccessId,
      this.camsCmsId});

  factory EditSiteAccessRequest.fromJson(Map<String, dynamic> json) =>
      EditSiteAccessRequest(
        camsBureauId: json["camsBureauID"],
        camsAssetName: json["camsAssetName"],
        techLinkUserEmail: json["techLinkUserEmail"],
        camsBaseAssetId: json["camsBaseAssetID"],
        camsBaseAssetNo: json["camsBaseAssetNo"],
        camsAssetAddress: json["camsAssetAddress"],
        accessStart: json["accessStart"],
        accessEnd: json["accessEnd"],
        siteAccessId: json["siteAccessID"],
        camsCmsId: json["camsCmsID"],
      );

  Map<String, dynamic> toJson() => {
        "camsBureauID": camsBureauId,
        "camsAssetName": camsAssetName,
        "techLinkUserEmail": techLinkUserEmail,
        "camsBaseAssetID": camsBaseAssetId,
        "camsBaseAssetNo": camsBaseAssetNo,
        "camsAssetAddress": camsAssetAddress,
        "accessStart": accessStart,
        "accessEnd": accessEnd,
        "siteAccessID": siteAccessId,
        "camsCmsID": camsCmsId,
      };
}
