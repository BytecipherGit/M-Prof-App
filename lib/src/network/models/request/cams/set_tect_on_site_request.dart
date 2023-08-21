class SetTechOnSiteRequest {
  int? bureauId;
  String? techLinkAdminEmail;
  int? serviceId;
  int? baseAssetId;
  String? techLinkCompanyName;
  String? techLinkUserFirstName;
  String? techLinkUserLastName;

  SetTechOnSiteRequest({
    this.bureauId,
    this.techLinkAdminEmail,
    this.serviceId,
    this.baseAssetId,
    this.techLinkCompanyName,
    this.techLinkUserFirstName,
    this.techLinkUserLastName,
  });

  factory SetTechOnSiteRequest.fromJson(Map<String, dynamic> json) =>
      SetTechOnSiteRequest(
        bureauId: json["bureauID"],
        techLinkAdminEmail: json["techLinkAdminEmail"],
        serviceId: json["serviceID"],
        baseAssetId: json["baseAssetID"],
        techLinkCompanyName: json["techLinkCompanyName"],
        techLinkUserFirstName: json["techLinkUserFirstName"],
        techLinkUserLastName: json["techLinkUserLastName"],
      );

  Map<String, dynamic> toJson() => {
        "bureauID": bureauId,
        "techLinkAdminEmail": techLinkAdminEmail,
        "serviceID": serviceId,
        "baseAssetID": baseAssetId,
        "techLinkCompanyName": techLinkCompanyName,
        "techLinkUserFirstName": techLinkUserFirstName,
        "techLinkUserLastName": techLinkUserLastName,
      };
}
