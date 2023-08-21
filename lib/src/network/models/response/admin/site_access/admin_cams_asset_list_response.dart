class AdminCamsAssetListResponse {
  int? status;
  String? message;
  List<AdminCamsAssetList>? data;

  AdminCamsAssetListResponse({
    this.status,
    this.message,
    this.data,
  });

  factory AdminCamsAssetListResponse.fromJson(Map<String, dynamic> json) =>
      AdminCamsAssetListResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<AdminCamsAssetList>.from(
                json["data"].map((x) => AdminCamsAssetList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AdminCamsAssetList {
  String? assetName;
  String? assetNo;
  String? baseAssetId;
  String? assetAddress;

  AdminCamsAssetList({
    this.assetName,
    this.assetNo,
    this.baseAssetId,
    this.assetAddress,
  });

  factory AdminCamsAssetList.fromJson(Map<String, dynamic> json) =>
      AdminCamsAssetList(
        assetName: json["assetName"],
        assetNo: json["AssetNo"],
        baseAssetId: json["BaseAssetID"],
        assetAddress: json["assetAddress"],
      );

  Map<String, dynamic> toJson() => {
        "assetName": assetName,
        "AssetNo": assetNo,
        "BaseAssetID": baseAssetId,
        "assetAddress": assetAddress,
      };
}
