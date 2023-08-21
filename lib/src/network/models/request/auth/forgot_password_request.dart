import 'dart:convert';

ResendOTPRequest forgotPasswordRequestFromJson(String str) =>
    ResendOTPRequest.fromJson(json.decode(str));

String forgotPasswordRequestToJson(ResendOTPRequest data) =>
    json.encode(data.toJson());

class ResendOTPRequest {
  String? email;

  ResendOTPRequest({
    this.email,
  });

  factory ResendOTPRequest.fromJson(Map<String, dynamic> json) =>
      ResendOTPRequest(
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
      };
}
