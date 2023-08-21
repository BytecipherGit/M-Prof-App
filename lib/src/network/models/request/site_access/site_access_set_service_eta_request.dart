class SiteAccessSetServiceEtaRequest {
  int? bureauId;
  String? techLinkAdminEmail;
  int? serviceId;
  String? eta;

  SiteAccessSetServiceEtaRequest({
    this.bureauId,
    this.techLinkAdminEmail,
    this.serviceId,
    this.eta,
  });

  factory SiteAccessSetServiceEtaRequest.fromJson(Map<String, dynamic> json) =>
      SiteAccessSetServiceEtaRequest(
        bureauId: json["bureauID"],
        techLinkAdminEmail: json["techLinkAdminEmail"],
        serviceId: json["serviceID"],
        eta: json["eta"],
      );

  Map<String, dynamic> toJson() => {
        "bureauID": bureauId,
        "techLinkAdminEmail": techLinkAdminEmail,
        "serviceID": serviceId,
        "eta": eta,
      };
}
