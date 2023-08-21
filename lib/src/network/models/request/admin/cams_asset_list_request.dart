class CAMSAssetListRequest {
  int? bureauId;
  String? techLinkAdminEmail;
  String? searchText;
  String? lastAssetName;
  int? showLines;

  CAMSAssetListRequest({
    this.bureauId,
    this.techLinkAdminEmail,
    this.searchText,
    this.lastAssetName,
    this.showLines,
  });

  factory CAMSAssetListRequest.fromJson(Map<String, dynamic> json) =>
      CAMSAssetListRequest(
        bureauId: json["bureauID"],
        techLinkAdminEmail: json["techLinkAdminEmail"],
        searchText: json["searchText"],
        lastAssetName: json["lastAssetName"],
        showLines: json["showLines"],
      );

  Map<String, dynamic> toJson() => {
        "bureauID": bureauId,
        "techLinkAdminEmail": techLinkAdminEmail,
        "searchText": searchText,
        "lastAssetName": lastAssetName,
        "showLines": showLines,
      };
}
