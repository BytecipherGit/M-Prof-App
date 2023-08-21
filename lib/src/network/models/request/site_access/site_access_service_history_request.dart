class SiteAccessServiceHistoryRequest {
  String? bureauId;
  String? techLinkAdminEmail;
  int? serviceId;
  String? baseAssetId;
  String? lastServiceId;
  int? showLines;

  SiteAccessServiceHistoryRequest({
    this.bureauId,
    this.techLinkAdminEmail,
    this.serviceId,
    this.baseAssetId,
    this.lastServiceId,
    this.showLines,
  });

  factory SiteAccessServiceHistoryRequest.fromJson(Map<String, dynamic> json) =>
      SiteAccessServiceHistoryRequest(
        bureauId: json["bureauID"],
        techLinkAdminEmail: json["techLinkAdminEmail"],
        serviceId: json["serviceID"],
        baseAssetId: json["baseAssetID"],
        lastServiceId: json["lastServiceID"],
        showLines: json["showLines"],
      );

  Map<String, dynamic> toJson() => {
        "bureauID": bureauId,
        "techLinkAdminEmail": techLinkAdminEmail,
        "serviceID": serviceId,
        "baseAssetID": baseAssetId,
        "lastServiceID": lastServiceId,
        "showLines": showLines,
      };
}
