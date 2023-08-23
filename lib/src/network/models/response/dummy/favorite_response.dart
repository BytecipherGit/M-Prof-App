class FavoriteResponse {
  int? id;
  String? image;
  String? startTime;
  String? closeTime;
  String? name;
  String? location;
  String? type;
  double? rating;
  int? isFav;
  String? status;

  FavoriteResponse({
    this.id,
    this.image,
    this.startTime,
    this.closeTime,
    this.name,
    this.location,
    this.type,
    this.rating,
    this.isFav,
    this.status,
  });

  factory FavoriteResponse.fromJson(Map<String, dynamic> json) =>
      FavoriteResponse(
        id: json["id"],
        image: json["image"],
        startTime: json["start_time"],
        closeTime: json["close_time"],
        name: json["name"],
        location: json["location"],
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
        "location": location,
        "type": type,
        "rating": rating,
        "is_fav": isFav,
        "status": status,
      };
}
