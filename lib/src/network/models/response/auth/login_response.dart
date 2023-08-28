class LoginResponse {
  bool? success;
  int? code;
  LoginData? data;
  String? message;
  String? accessToken;

  LoginResponse({
    this.success,
    this.code,
    this.data,
    this.message,
    this.accessToken,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        success: json["success"],
        code: json["code"],
        data: json["data"] == null ? null : LoginData.fromJson(json["data"]),
        message: json["message"],
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "code": code,
        "data": data!.toJson(),
        "message": message,
        "access_token": accessToken,
      };
}

class LoginData {
  int? isMobileVerify;
  String? mpin;

  LoginData({
    this.isMobileVerify,
    this.mpin,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        isMobileVerify: json["is_mobile_verify"],
        mpin: json["mpin"],
      );

  Map<String, dynamic> toJson() => {
        "is_mobile_verify": isMobileVerify,
        "mpin": mpin,
      };
}
