class AdminSideRequiredData {
  int? bureauId;
  String? techLinkAdminEmail;
  String? searchText;
  String? lastAssetName;
  int? showLines;
  String? camsName;
  String? camsBureauName;
  String? apiUrl;
  String? camsBaseAssetID;
  String? camsBaseAssetNo;
  String? camsAssetName;
  String? camsAssetAddress;
  String? accessStart;
  String? accessEnd;
  String? camsCmsID;
  String? firstName;
  String? lastName;
  String? siteAccessID;

  AdminSideRequiredData({
    this.bureauId,
    this.techLinkAdminEmail,
    this.searchText,
    this.lastAssetName,
    this.showLines,
    this.camsName,
    this.camsBureauName,
    this.apiUrl,
    this.camsBaseAssetID,
    this.camsBaseAssetNo,
    this.camsAssetName,
    this.camsAssetAddress,
    this.accessStart,
    this.accessEnd,
    this.camsCmsID,
    this.firstName,
    this.lastName,
    this.siteAccessID,
  });

  factory AdminSideRequiredData.fromJson(Map<String, dynamic> json) =>
      AdminSideRequiredData(
        bureauId: json["bureauID"],
        techLinkAdminEmail: json["techLinkAdminEmail"],
        searchText: json["searchText"],
        lastAssetName: json["lastAssetName"],
        showLines: json["showLines"],
        camsName: json["camsName"],
        camsBureauName: json["camsBureauName"],
        apiUrl: json["apiURL"],
        camsBaseAssetID: json["camsBaseAssetID"],
        camsBaseAssetNo: json["camsBaseAssetNo"],
        camsAssetName: json["camsAssetName"],
        camsAssetAddress: json["camsAssetAddress"],
        accessStart: json["accessStart"],
        accessEnd: json["accessEnd"],
        camsCmsID: json["camsCmsID"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        siteAccessID: json["siteAccessID"],
      );

  Map<String, dynamic> toJson() => {
        "bureauID": bureauId,
        "techLinkAdminEmail": techLinkAdminEmail,
        "searchText": searchText,
        "lastAssetName": lastAssetName,
        "showLines": showLines,
        "camsName": camsName,
        "camsBureauName": camsBureauName,
        "apiURL": apiUrl,
        "camsBaseAssetID": camsBaseAssetID,
        "camsBaseAssetNo": camsBaseAssetNo,
        "camsAssetName": camsAssetName,
        "camsAssetAddress": camsAssetAddress,
        "accessStart": accessStart,
        "accessEnd": accessEnd,
        "camsCmsID": camsCmsID,
        "firstName": firstName,
        "lastName": lastName,
        "siteAccessID": siteAccessID,
      };
}
