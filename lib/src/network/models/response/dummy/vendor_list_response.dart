class VendorListResponse {
  int? id;
  String? image;
  String? startTime;
  String? closeTime;
  String? name;
  String? type;
  double? rating;
  int? isFav;
  String? status;

  VendorListResponse({
    this.id,
    this.image,
    this.startTime,
    this.closeTime,
    this.name,
    this.type,
    this.rating,
    this.isFav,
    this.status,
  });

  factory VendorListResponse.fromJson(Map<String, dynamic> json) =>
      VendorListResponse(
        id: json["id"],
        image: json["image"],
        startTime: json["start_time"],
        closeTime: json["close_time"],
        name: json["name"],
        type: json["type"],
        rating: json["rating"],
        isFav: json["is_fav"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "start_time": startTime,
        "close_time": closeTime,
        "name": name,
        "type": type,
        "rating": rating,
        "is_fav": isFav,
        "status": status,
      };
}
