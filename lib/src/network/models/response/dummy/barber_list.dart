class BarberList {
  int? id;
  String? image;
  String? startTime;
  String? closeTime;
  String? name;
  String? location;
  double? rating;
  int? isFav;
  String? status;

  BarberList({
    this.id,
    this.image,
    this.startTime,
    this.closeTime,
    this.name,
    this.location,
    this.rating,
    this.isFav,
    this.status,
  });

  factory BarberList.fromJson(Map<String, dynamic> json) =>
      BarberList(
        id: json["id"],
        image: json["image"],
        startTime: json["start_time"],
        closeTime: json["close_time"],
        name: json["name"],
        location: json["location"],
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
        "rating": rating,
        "is_fav": isFav,
        "status": status,
      };
}
