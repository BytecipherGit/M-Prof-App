import 'dart:convert';

SiteAccessLoginResponse camsLoginResponseFromJson(String str) =>
    SiteAccessLoginResponse.fromJson(json.decode(str));

String camsLoginResponseToJson(SiteAccessLoginResponse data) =>
    json.encode(data.toJson());

class SiteAccessLoginResponse {
  int? status;
  String? message;
  List<SiteAccessLogin>? data;

  SiteAccessLoginResponse({
    this.status,
    this.message,
    this.data,
  });

  factory SiteAccessLoginResponse.fromJson(Map<String, dynamic> json) =>
      SiteAccessLoginResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<SiteAccessLogin>.from(
                json["data"].map((x) => SiteAccessLogin.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class SiteAccessLogin {
  String? email;
  String? camsToken;

  SiteAccessLogin({
    this.email,
    this.camsToken,
  });

  factory SiteAccessLogin.fromJson(Map<String, dynamic> json) => SiteAccessLogin(
        email: json["email"],
        camsToken: json["camsToken"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "camsToken": camsToken,
      };
}
