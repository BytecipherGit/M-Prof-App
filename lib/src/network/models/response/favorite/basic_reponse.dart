class BasicResponse {
  bool? status;
  int? code;
  String? message;

  BasicResponse({
    this.status,
    this.code,
    this.message,
  });

  factory BasicResponse.fromJson(Map<String, dynamic> json) => BasicResponse(
        status: json["status"],
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "message": message,
      };
}
