class RegisterResponse {
  bool? success;
  int? code;
  String? message;

  RegisterResponse({
    this.success,
    this.code,
    this.message,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => RegisterResponse(
    success: json["success"],
    code: json["code"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "code": code,
    "message": message,
  };
}
