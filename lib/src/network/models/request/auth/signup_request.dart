import 'dart:convert';

SignUpRequest signUpRequestFromJson(String str) =>
    SignUpRequest.fromJson(json.decode(str));

String signUpRequestToJson(SignUpRequest data) => json.encode(data.toJson());

class SignUpRequest {
  String? email;
  String? password;
  String? firstName;
  String? lastName;
  int? phone;
  String? address;
  String? companyName;
  String? address2;
  String? city;
  String? state;
  String? postcode;

  SignUpRequest({
    this.email,
    this.password,
    this.firstName,
    this.lastName,
    this.phone,
    this.address,
    this.companyName,
    this.address2,
    this.city,
    this.state,
    this.postcode,
  });

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => SignUpRequest(
        email: json["email"],
        password: json["password"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        phone: json["phone"],
        address: json["address"],
        companyName: json["companyName"],
        address2: json["address2"],
        city: json["city"],
        state: json["state"],
        postcode: json["postcode"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "firstName": firstName,
        "lastName": lastName,
        "phone": phone,
        "address": address,
        "companyName": companyName,
        "address2": address2,
        "city": city,
        "state": state,
        "postcode": postcode,
      };
}
