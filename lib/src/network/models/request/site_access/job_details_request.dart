import 'dart:convert';

ServiceJobDetailsRequest serviceJobDetailsRequestFromJson(String str) =>
    ServiceJobDetailsRequest.fromJson(json.decode(str));

String serviceJobDetailsRequestToJson(ServiceJobDetailsRequest data) =>
    json.encode(data.toJson());

class ServiceJobDetailsRequest {
  int? bureauId;
  String? techLinkAdminEmail;
  int? serviceId;
  int? historyView;

  ServiceJobDetailsRequest({
    this.bureauId,
    this.techLinkAdminEmail,
    this.serviceId,
    this.historyView,
  });

  factory ServiceJobDetailsRequest.fromJson(Map<String, dynamic> json) =>
      ServiceJobDetailsRequest(
        bureauId: json["bureauID"],
        techLinkAdminEmail: json["techLinkAdminEmail"],
        serviceId: json["serviceID"],
        historyView: json["historyView"],
      );

  Map<String, dynamic> toJson() => {
        "bureauID": bureauId,
        "techLinkAdminEmail": techLinkAdminEmail,
        "serviceID": serviceId,
        "historyView": historyView,
      };
}
