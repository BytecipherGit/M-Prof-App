class HospitalResponse {
  int? id;
  String? image;
  String? startTime;
  String? closeTime;
  String? distance;
  String? name;
  String? phone;
  String? location;
  double? rating;
  int? isFav;
  String? status;
  String? type;

  HospitalResponse({
    this.id,
    this.image,
    this.startTime,
    this.closeTime,
    this.distance,
    this.name,
    this.phone,
    this.location,
    this.rating,
    this.isFav,
    this.status,
    this.type,
  });

  factory HospitalResponse.fromJson(Map<String, dynamic> json) =>
      HospitalResponse(
        id: json["id"],
        image: json["image"],
        startTime: json["start_time"],
        closeTime: json["close_time"],
        distance: json["distance"],
        name: json["name"],
        phone: json["phone"],
        location: json["location"],
        rating: json["rating"],
        isFav: json["is_fav"],
        status: json["status"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "start_time": startTime,
        "close_time": closeTime,
        "distance": distance,
        "name": name,
        "phone": phone,
        "location": location,
        "rating": rating,
        "is_fav": isFav,
        "status": status,
        "type": type,
      };
}
