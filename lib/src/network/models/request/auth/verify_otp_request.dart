class VerifyOtpRequest {
  String? countryCode;
  String? phoneNumber;
  String? otpCode;

  VerifyOtpRequest({
    this.countryCode,
    this.phoneNumber,
    this.otpCode,
  });

  factory VerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      VerifyOtpRequest(
        countryCode: json["country_code"],
        phoneNumber: json["phone_number"],
        otpCode: json["otp_code"],
      );

  Map<String, dynamic> toJson() => {
        "country_code": countryCode,
        "phone_number": phoneNumber,
        "otp_code": otpCode,
      };
}
