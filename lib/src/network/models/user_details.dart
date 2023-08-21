class UserProfileView {
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? address;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? companyName;

  UserProfileView({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.address,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.companyName,
  });

  factory UserProfileView.fromJson(Map<String, dynamic> json) =>
      UserProfileView(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phone: json["phone"],
        address: json["address"],
        address2: json["address2"],
        city: json["city"],
        state: json["state"],
        postcode: json["postcode"],
        companyName: json["companyName"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phone": phone,
        "address": address,
        "address2": address2,
        "city": city,
        "state": state,
        "postcode": postcode,
        "companyName": companyName,
      };
}
