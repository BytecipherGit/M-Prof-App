import 'dart:convert';

CamsZoneResponse camsZoneResponseFromJson(String str) =>
    CamsZoneResponse.fromJson(json.decode(str));

String camsZoneResponseToJson(CamsZoneResponse data) =>
    json.encode(data.toJson());

class CamsZoneResponse {
  int? status;
  String? message;
  List<CamsZone>? data;

  CamsZoneResponse({
    this.status,
    this.message,
    this.data,
  });

  factory CamsZoneResponse.fromJson(Map<String, dynamic> json) =>
      CamsZoneResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<CamsZone>.from(
                json["data"].map((x) => CamsZone.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class CamsZone {
  String? area;
  String? zoneNo;
  String? irZoneCode;
  String? zoneDescription;

  CamsZone({
    this.area,
    this.zoneNo,
    this.irZoneCode,
    this.zoneDescription,
  });

  factory CamsZone.fromJson(Map<String, dynamic> json) => CamsZone(
        area: json["area"],
        zoneNo: json["zoneNo"],
        irZoneCode: json["IRZoneCode"],
        zoneDescription: json["zoneDescription"],
      );

  Map<String, dynamic> toJson() => {
        "area": area,
        "zoneNo": zoneNo,
        "IRZoneCode": irZoneCode,
        "zoneDescription": zoneDescription,
      };
}
