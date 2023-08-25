class SignUpRequest {
  String? name;
  String? email;
  String? countryCode;
  String? phoneNumber;

  SignUpRequest({
    this.name,
    this.email,
    this.countryCode,
    this.phoneNumber,
  });

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => SignUpRequest(
        name: json["name"],
        email: json["email"],
        countryCode: json["country_code"],
        phoneNumber: json["phone_number"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "country_code": countryCode,
        "phone_number": phoneNumber,
      };
}
