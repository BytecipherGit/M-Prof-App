import 'dart:convert';

SiteAccessAlarmResponse camsAlarmResponseFromJson(String str) =>
    SiteAccessAlarmResponse.fromJson(json.decode(str));

String camsAlarmResponseToJson(SiteAccessAlarmResponse data) =>
    json.encode(data.toJson());

class SiteAccessAlarmResponse {
  int? status;
  String? message;
  List<SiteAccessAlarmHistory>? data;

  SiteAccessAlarmResponse({
    this.status,
    this.message,
    this.data,
  });

  factory SiteAccessAlarmResponse.fromJson(Map<String, dynamic> json) =>
      SiteAccessAlarmResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<SiteAccessAlarmHistory>.from(
                json["data"].map((x) => SiteAccessAlarmHistory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class SiteAccessAlarmHistory {
  String? alarmTime;
  String? alarmMessage;
  String? alarmState;
  String? rawData;
  String? eventId;
  String? assetNo;

  SiteAccessAlarmHistory({
    this.alarmTime,
    this.alarmMessage,
    this.alarmState,
    this.rawData,
    this.eventId,
    this.assetNo,
  });

  factory SiteAccessAlarmHistory.fromJson(Map<String, dynamic> json) =>
      SiteAccessAlarmHistory(
        alarmTime: json["alarmTime"],
        alarmMessage: json["alarmMessage"],
        alarmState: json["alarmState"],
        rawData: json["rawData"],
        eventId: json["eventId"],
        assetNo: json["assetNo"],
      );

  Map<String, dynamic> toJson() => {
        "alarmTime": alarmTime,
        "alarmMessage": alarmMessage,
        "alarmState": alarmState,
        "rawData": rawData,
        "eventId": eventId,
        "assetNo": assetNo,
      };
}
