import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  int? status;
  String? message;
  List<UserDetails>? data;

  LoginResponse({
    this.status,
    this.message,
    this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? null
            : List<UserDetails>.from(
                json["data"].map((x) => UserDetails.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class UserDetails {
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? address;
  String? companyName;
  String? suretekToken;
  String? address2;
  String? city;
  String? state;
  String? postcode;

  UserDetails({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.address,
    this.companyName,
    this.suretekToken,
    this.address2,
    this.city,
    this.state,
    this.postcode,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phone: json["phone"],
        address: json["address"],
        companyName: json["companyName"],
        suretekToken: json["suretekToken"],
        address2: json["address2"],
        city: json["city"],
        state: json["state"],
        postcode: json["postcode"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phone": phone,
        "address": address,
        "companyName": companyName,
        "suretekToken": suretekToken,
        "address2": address2,
        "city": city,
        "state": state,
        "postcode": postcode,
      };
}
