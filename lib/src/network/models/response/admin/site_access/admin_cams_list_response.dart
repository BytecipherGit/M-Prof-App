class AdminCmsListResponse {
  int? status;
  String? message;
  List<AdminCmsList>? data;

  AdminCmsListResponse({
    this.status,
    this.message,
    this.data,
  });

  factory AdminCmsListResponse.fromJson(Map<String, dynamic> json) =>
      AdminCmsListResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<AdminCmsList>.from(
                json["data"].map((x) => AdminCmsList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AdminCmsList {
  String? camsName;
  String? camsBureauName;
  String? apiUrl;
  String? camsBureauId;
  String? camsCmsID;

  AdminCmsList({
    this.camsName,
    this.camsBureauName,
    this.apiUrl,
    this.camsBureauId,
    this.camsCmsID,
  });

  factory AdminCmsList.fromJson(Map<String, dynamic> json) => AdminCmsList(
        camsName: json["camsName"],
        camsBureauName: json["camsBureauName"],
        apiUrl: json["apiURL"],
        camsBureauId: json["camsBureauID"],
        camsCmsID: json["camsCmsID"],
      );

  Map<String, dynamic> toJson() => {
        "camsName": camsName,
        "camsBureauName": camsBureauName,
        "apiURL": apiUrl,
        "camsBureauID": camsBureauId,
        "camsCmsID": camsCmsID,
      };
}
