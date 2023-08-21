class MyTechLinkUserListResponse {
  int? status;
  String? message;
  List<MyTechLinkUserList>? data;

  MyTechLinkUserListResponse({
    this.status,
    this.message,
    this.data,
  });

  factory MyTechLinkUserListResponse.fromJson(Map<String, dynamic> json) =>
      MyTechLinkUserListResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<MyTechLinkUserList>.from(
                json["data"].map((x) => MyTechLinkUserList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class MyTechLinkUserList {
  String? userId;
  String? firstName;
  String? lastName;
  String? email;

  MyTechLinkUserList({
    this.userId,
    this.firstName,
    this.lastName,
    this.email,
  });

  factory MyTechLinkUserList.fromJson(Map<String, dynamic> json) =>
      MyTechLinkUserList(
        userId: json["userID"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "userID": userId,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
      };
}
