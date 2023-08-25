class VerifyOtpRequest {
  String? phoneNumber;
  String? otpCode;

  VerifyOtpRequest({
    this.phoneNumber,
    this.otpCode,
  });

  factory VerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      VerifyOtpRequest(
        phoneNumber: json["phone_number"],
        otpCode: json["otp_code"],
      );

  Map<String, dynamic> toJson() => {
        "phone_number": phoneNumber,
        "otp_code": otpCode,
      };
}
