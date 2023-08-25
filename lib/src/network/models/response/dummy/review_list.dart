class ReviewList {
  String? userName;
  String? email;
  String? userImage;
  String? comment;
  double? rating;
  DateTime? timestamp;

  ReviewList({
    this.userName,
    this.email,
    this.userImage,
    this.comment,
    this.rating,
    this.timestamp,
  });

  factory ReviewList.fromJson(Map<String, dynamic> json) => ReviewList(
        userName: json["user_name"],
        email: json["email"],
        userImage: json["user_image"],
        comment: json["comment"],
        rating: json["rating"],
        timestamp: json["timestamp"] == null
            ? null
            : DateTime.parse(json["timestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "user_name": userName,
        "email": email,
        "user_image": userImage,
        "comment": comment,
        "rating": rating,
        "timestamp": timestamp!.toIso8601String(),
      };
}
