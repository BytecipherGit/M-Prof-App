class ChangePasswordRequest {
  String? oldPassword;
  String? newPassword;

  ChangePasswordRequest({
    this.oldPassword,
    this.newPassword,
  });

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) => ChangePasswordRequest(
    oldPassword: json["oldPassword"],
    newPassword: json["newPassword"],
  );

  Map<String, dynamic> toJson() => {
    "oldPassword": oldPassword,
    "newPassword": newPassword,
  };
}
