class SetMPinRequest {
  String? countryCode;
  String? phoneNumber;
  String? mPin;

  SetMPinRequest({
    this.countryCode,
    this.phoneNumber,
    this.mPin,
  });

  factory SetMPinRequest.fromJson(Map<String, dynamic> json) => SetMPinRequest(
        countryCode: json["country_code"],
        phoneNumber: json["phone_number"],
        mPin: json["m_pin"],
      );

  Map<String, dynamic> toJson() => {
        "country_code": countryCode,
        "phone_number": phoneNumber,
        "m_pin": mPin,
      };
}
