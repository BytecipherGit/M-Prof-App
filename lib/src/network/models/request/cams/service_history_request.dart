import 'dart:convert';

ServiceHistoryRequest serviceHistoryRequestFromJson(String str) =>
    ServiceHistoryRequest.fromJson(json.decode(str));

String serviceHistoryRequestToJson(ServiceHistoryRequest data) =>
    json.encode(data.toJson());

class ServiceHistoryRequest {
  String? bureauId;
  String? techLinkAdminEmail;
  int? serviceId;
  String? baseAssetId;
  String? lastServiceId;
  int? showLines;

  ServiceHistoryRequest({
    this.bureauId,
    this.techLinkAdminEmail,
    this.serviceId,
    this.baseAssetId,
    this.lastServiceId,
    this.showLines,
  });

  factory ServiceHistoryRequest.fromJson(Map<String, dynamic> json) =>
      ServiceHistoryRequest(
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
