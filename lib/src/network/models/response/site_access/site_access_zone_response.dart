import 'dart:convert';

SiteAccessZoneResponse camsZoneResponseFromJson(String str) =>
    SiteAccessZoneResponse.fromJson(json.decode(str));

String camsZoneResponseToJson(SiteAccessZoneResponse data) =>
    json.encode(data.toJson());

class SiteAccessZoneResponse {
  int? status;
  String? message;
  List<SiteAccessZone>? data;

  SiteAccessZoneResponse({
    this.status,
    this.message,
    this.data,
  });

  factory SiteAccessZoneResponse.fromJson(Map<String, dynamic> json) =>
      SiteAccessZoneResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<SiteAccessZone>.from(
                json["data"].map((x) => SiteAccessZone.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class SiteAccessZone {
  String? area;
  String? zoneNo;
  String? irZoneCode;
  String? zoneDescription;

  SiteAccessZone({
    this.area,
    this.zoneNo,
    this.irZoneCode,
    this.zoneDescription,
  });

  factory SiteAccessZone.fromJson(Map<String, dynamic> json) => SiteAccessZone(
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
