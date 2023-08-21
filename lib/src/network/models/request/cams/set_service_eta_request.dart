class SetServiceEtaRequest {
  int? bureauId;
  String? techLinkAdminEmail;
  int? serviceId;
  String? eta;

  SetServiceEtaRequest({
    this.bureauId,
    this.techLinkAdminEmail,
    this.serviceId,
    this.eta,
  });

  factory SetServiceEtaRequest.fromJson(Map<String, dynamic> json) =>
      SetServiceEtaRequest(
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
