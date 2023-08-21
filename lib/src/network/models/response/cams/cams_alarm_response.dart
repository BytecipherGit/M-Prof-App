import 'dart:convert';

CamsAlarmResponse camsAlarmResponseFromJson(String str) =>
    CamsAlarmResponse.fromJson(json.decode(str));

String camsAlarmResponseToJson(CamsAlarmResponse data) =>
    json.encode(data.toJson());

class CamsAlarmResponse {
  int? status;
  String? message;
  List<AlarmHistory>? data;

  CamsAlarmResponse({
    this.status,
    this.message,
    this.data,
  });

  factory CamsAlarmResponse.fromJson(Map<String, dynamic> json) =>
      CamsAlarmResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<AlarmHistory>.from(
                json["data"].map((x) => AlarmHistory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AlarmHistory {
  String? alarmTime;
  String? alarmMessage;
  String? alarmState;
  String? rawData;
  String? eventId;
  String? assetNo;

  AlarmHistory({
    this.alarmTime,
    this.alarmMessage,
    this.alarmState,
    this.rawData,
    this.eventId,
    this.assetNo,
  });

  factory AlarmHistory.fromJson(Map<String, dynamic> json) => AlarmHistory(
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
