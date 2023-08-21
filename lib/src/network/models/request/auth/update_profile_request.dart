class UpdateProfileRequest {
  String? email;
  String? firstName;
  String? lastName;
  String? phone;
  String? address;
  String? companyName;
  String? address2;
  String? city;
  String? state;
  String? postcode;

  UpdateProfileRequest({
    this.email,
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

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      UpdateProfileRequest(
        email: json["email"],
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
