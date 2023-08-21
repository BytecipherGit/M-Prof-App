import 'dart:convert';

CamsJobDetailsResponse camsJobDetailsResponseFromJson(String str) =>
    CamsJobDetailsResponse.fromJson(json.decode(str));

String camsJobDetailsResponseToJson(CamsJobDetailsResponse data) =>
    json.encode(data.toJson());

class CamsJobDetailsResponse {
  int? status;
  String? message;
  List<CamsJobDetails>? data;

  CamsJobDetailsResponse({
    this.status,
    this.message,
    this.data,
  });

  factory CamsJobDetailsResponse.fromJson(Map<String, dynamic> json) =>
      CamsJobDetailsResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<CamsJobDetails>.from(
                json["data"].map((x) => CamsJobDetails.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class CamsJobDetails {
  String? assetNo;
  String? assetName;
  String? address1;
  String? phone;
  String? jobType;
  String? jobDescription;
  String? dateCreated;
  String? etaTime;
  String? onSiteTime;
  String? offSiteTime;
  String? jobNotes;
  String? onTestDate;
  String? techComments;
  String? jobOutcome;
  String? companyName;
  String? techName;
  String? bureauName;
  String? assetTimeZone;
  String? techLinkAllowFinalise;

  CamsJobDetails({
    this.assetNo,
    this.assetName,
    this.address1,
    this.phone,
    this.jobType,
    this.jobDescription,
    this.dateCreated,
    this.etaTime,
    this.onSiteTime,
    this.offSiteTime,
    this.jobNotes,
    this.onTestDate,
    this.techComments,
    this.jobOutcome,
    this.companyName,
    this.techName,
    this.bureauName,
    this.assetTimeZone,
    this.techLinkAllowFinalise,
  });

  factory CamsJobDetails.fromJson(Map<String, dynamic> json) => CamsJobDetails(
        assetNo: json["assetNo"],
        assetName: json["assetName"],
        address1: json["address1"],
        phone: json["phone"],
        jobType: json["jobType"],
        jobDescription: json["jobDescription"],
        dateCreated: json["dateCreated"],
        etaTime: json["ETATime"],
        onSiteTime: json["onSiteTime"],
        offSiteTime: json["offSiteTime"],
        jobNotes: json["jobNotes"],
        onTestDate: json["onTestDate"],
        techComments: json["techComments"],
        jobOutcome: json["jobOutcome"],
        companyName: json["companyName"],
        techName: json["techName"],
        bureauName: json["bureauName"],
        assetTimeZone: json["assetTimeZone"],
        techLinkAllowFinalise: json["techLinkAllowFinalise"],
      );

  Map<String, dynamic> toJson() => {
        "assetNo": assetNo,
        "assetName": assetName,
        "address1": address1,
        "phone": phone,
        "jobType": jobType,
        "jobDescription": jobDescription,
        "dateCreated": dateCreated,
        "ETATime": etaTime,
        "onSiteTime": onSiteTime,
        "offSiteTime": offSiteTime,
        "jobNotes": jobNotes,
        "onTestDate": onTestDate,
        "techComments": techComments,
        "jobOutcome": jobOutcome,
        "companyName": companyName,
        "techName": techName,
        "bureauName": bureauName,
        "assetTimeZone": assetTimeZone,
        "techLinkAllowFinalise": techLinkAllowFinalise,
      };
}
