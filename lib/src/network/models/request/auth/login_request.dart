class LoginRequest {
  String? countryCode;
  String? phoneNumber;

  LoginRequest({
    this.countryCode,
    this.phoneNumber,
  });

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
    countryCode: json["country_code"],
    phoneNumber: json["phone_number"],
  );

  Map<String, dynamic> toJson() => {
    "country_code": countryCode,
    "phone_number": phoneNumber,
  };
}
