class SiteAccessDetailsRequest {
  int? bureauId;
  String? techLinkAdminEmail;
  int? serviceId;
  int? baseAssetId;

  SiteAccessDetailsRequest({
    this.bureauId,
    this.techLinkAdminEmail,
    this.serviceId,
    this.baseAssetId,
  });

  factory SiteAccessDetailsRequest.fromJson(Map<String, dynamic> json) =>
      SiteAccessDetailsRequest(
        bureauId: json["bureauID"],
        techLinkAdminEmail: json["techLinkAdminEmail"],
        serviceId: json["serviceID"],
        baseAssetId: json["baseAssetID"],
      );

  Map<String, dynamic> toJson() => {
        "bureauID": bureauId,
        "techLinkAdminEmail": techLinkAdminEmail,
        "serviceID": serviceId,
        "baseAssetID": baseAssetId,
      };
}
