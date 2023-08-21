class SiteAccessDetailsResponse {
  int? status;
  String? message;
  List<SiteAccessDetails>? data;

  SiteAccessDetailsResponse({
    this.status,
    this.message,
    this.data,
  });

  factory SiteAccessDetailsResponse.fromJson(Map<String, dynamic> json) =>
      SiteAccessDetailsResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<SiteAccessDetails>.from(
                json["data"].map((x) => SiteAccessDetails.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class SiteAccessDetails {
  String? assetNo;
  String? assetName;
  String? assetAddress;
  String? assetPhone;
  String? assetOnTestDate;
  String? assetTimeZone;
  List<Area>? areas;

  SiteAccessDetails({
    this.assetNo,
    this.assetName,
    this.assetAddress,
    this.assetPhone,
    this.assetOnTestDate,
    this.assetTimeZone,
    this.areas,
  });

  factory SiteAccessDetails.fromJson(Map<String, dynamic> json) =>
      SiteAccessDetails(
        assetNo: json["assetNo"],
        assetName: json["assetName"],
        assetAddress: json["assetAddress"],
        assetPhone: json["assetPhone"],
        assetOnTestDate: json["assetOnTestDate"],
        assetTimeZone: json["assetTimeZone"],
        areas: json["areas"] == null
            ? []
            : List<Area>.from(json["areas"].map((x) => Area.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "assetNo": assetNo,
        "assetName": assetName,
        "assetAddress": assetAddress,
        "assetPhone": assetPhone,
        "assetOnTestDate": assetOnTestDate,
        "assetTimeZone": assetTimeZone,
        "areas": List<dynamic>.from(areas!.map((x) => x.toJson())),
      };
}

class Area {
  String? areaName;
  String? areaNo;
  String? assetId;

  Area({
    this.areaName,
    this.areaNo,
    this.assetId,
  });

  factory Area.fromJson(Map<String, dynamic> json) => Area(
        areaName: json["areaName"],
        areaNo: json["areaNo"],
        assetId: json["assetID"],
      );

  Map<String, dynamic> toJson() => {
        "areaName": areaName,
        "areaNo": areaNo,
        "assetID": assetId,
      };
}
