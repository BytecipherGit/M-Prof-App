class UserResponse {
  bool? success;
  int? code;
  User? data;
  AccessToken? accessToken;
  String? message;

  UserResponse({
    this.success,
    this.code,
    this.data,
    this.accessToken,
    this.message,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        success: json["success"],
        code: json["code"],
        data: json["data"] == null ? null : User.fromJson(json["data"]),
        accessToken: json["access_token"] == null
            ? null
            : AccessToken.fromJson(json["access_token"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "code": code,
        "data": data!.toJson(),
        "access_token": accessToken!.toJson(),
        "message": message,
      };
}

class AccessToken {
  String? accessToken;

  AccessToken({
    this.accessToken,
  });

  factory AccessToken.fromJson(Map<String, dynamic> json) => AccessToken(
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
      };
}

class User {
  int? id;
  dynamic image;
  dynamic parentId;
  String? vendorId;
  dynamic shopName;
  String? name;
  String? email;
  String? phoneNumber;
  String? category;
  dynamic address;
  String? otpCode;
  dynamic lat;
  dynamic lng;
  int? isVerify;
  String? mPin;
  dynamic phoneVerifiedAt;
  dynamic emailVerifiedAt;
  int? status;
  String? countryCode;
  DateTime? createdAt;
  DateTime? updatedAt;

  User({
    this.id,
    this.image,
    this.parentId,
    this.vendorId,
    this.shopName,
    this.name,
    this.email,
    this.phoneNumber,
    this.category,
    this.address,
    this.otpCode,
    this.lat,
    this.lng,
    this.isVerify,
    this.mPin,
    this.phoneVerifiedAt,
    this.emailVerifiedAt,
    this.status,
    this.countryCode,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        image: json["image"],
        parentId: json["parent_id"],
        vendorId: json["vendorID"],
        shopName: json["shopName"],
        name: json["name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        category: json["category"],
        address: json["address"],
        otpCode: json["otp_code"],
        lat: json["lat"],
        lng: json["lng"],
        isVerify: json["is_verify"],
        mPin: json["m_pin"],
        phoneVerifiedAt: json["phone_verified_at"],
        emailVerifiedAt: json["email_verified_at"],
        status: json["status"],
        countryCode: json["country_code"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "parent_id": parentId,
        "vendorID": vendorId,
        "shopName": shopName,
        "name": name,
        "email": email,
        "phone_number": phoneNumber,
        "category": category,
        "address": address,
        "otp_code": otpCode,
        "lat": lat,
        "lng": lng,
        "is_verify": isVerify,
        "m_pin": mPin,
        "phone_verified_at": phoneVerifiedAt,
        "email_verified_at": emailVerifiedAt,
        "status": status,
        "country_code": countryCode,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
