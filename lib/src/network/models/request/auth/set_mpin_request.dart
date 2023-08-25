class SetMPinRequest {
  String? phoneNumber;
  String? mPin;

  SetMPinRequest({
    this.phoneNumber,
    this.mPin,
  });

  factory SetMPinRequest.fromJson(Map<String, dynamic> json) => SetMPinRequest(
        phoneNumber: json["phone_number"],
        mPin: json["m_pin"],
      );

  Map<String, dynamic> toJson() => {
        "phone_number": phoneNumber,
        "m_pin": mPin,
      };
}
