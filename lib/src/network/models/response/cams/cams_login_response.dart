import 'dart:convert';

CamsLoginResponse camsLoginResponseFromJson(String str) =>
    CamsLoginResponse.fromJson(json.decode(str));

String camsLoginResponseToJson(CamsLoginResponse data) =>
    json.encode(data.toJson());

class CamsLoginResponse {
  int? status;
  String? message;
  List<CamsLogin>? data;

  CamsLoginResponse({
    this.status,
    this.message,
    this.data,
  });

  factory CamsLoginResponse.fromJson(Map<String, dynamic> json) =>
      CamsLoginResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<CamsLogin>.from(
                json["data"].map((x) => CamsLogin.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class CamsLogin {
  String? email;
  String? camsToken;

  CamsLogin({
    this.email,
    this.camsToken,
  });

  factory CamsLogin.fromJson(Map<String, dynamic> json) => CamsLogin(
        email: json["email"],
        camsToken: json["camsToken"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "camsToken": camsToken,
      };
}
