class UpdateProfileResponse {
  int? status;
  String? message;
  List<UpdateProfile>? data;

  UpdateProfileResponse({
    this.status,
    this.message,
    this.data,
  });

  factory UpdateProfileResponse.fromJson(Map<String, dynamic> json) =>
      UpdateProfileResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<UpdateProfile>.from(
                json["data"].map((x) => UpdateProfile.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class UpdateProfile {
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? address;
  String? companyName;
  String? address2;
  String? city;
  String? state;
  String? postcode;

  UpdateProfile({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.address,
    this.companyName,
    this.address2,
    this.city,
    this.state,
    this.postcode,
  });

  factory UpdateProfile.fromJson(Map<String, dynamic> json) => UpdateProfile(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phone: json["phone"],
        address: json["address"],
        companyName: json["companyName"],
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
        "address2": address2,
        "city": city,
        "state": state,
      };
}
