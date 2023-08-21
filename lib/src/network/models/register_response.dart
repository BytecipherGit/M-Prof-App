import 'dart:convert';

RegisterResponse registerResponseFromJson(String str) =>
    RegisterResponse.fromJson(json.decode(str));

String registerResponseToJson(RegisterResponse data) =>
    json.encode(data.toJson());

class RegisterResponse {
  int? status;
  String? message;
  dynamic data;

  RegisterResponse({this.status, this.message, this.data});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      RegisterResponse(
          status: json["status"], message: json["message"], data: json["data"]);

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data,
      };
}
