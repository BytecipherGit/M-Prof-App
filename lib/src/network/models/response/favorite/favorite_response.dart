class FavoriteResponse {
  bool? status;
  int? code;
  String? message;
  List<Favorite>? data;

  FavoriteResponse({
    this.status,
    this.code,
    this.message,
    this.data,
  });

  factory FavoriteResponse.fromJson(Map<String, dynamic> json) =>
      FavoriteResponse(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        data:
            List<Favorite>.from(json["data"].map((x) => Favorite.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Favorite {
  int? profId;
  String? category;
  int? isFavorite;
  String? startTime;
  String? endTime;
  int? status;
  String? profName;
  String? title;
  String? averageRate;

  Favorite({
    this.profId,
    this.category,
    this.isFavorite,
    this.startTime,
    this.endTime,
    this.status,
    this.profName,
    this.title,
    this.averageRate,
  });

  factory Favorite.fromJson(Map<String, dynamic> json) => Favorite(
        profId: json["prof_id"],
        category: json["category"],
        isFavorite: json["is_favorite"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        status: json["status"],
        profName: json["profName"],
        title: json["title"],
        averageRate: json["average_rate"],
      );

  Map<String, dynamic> toJson() => {
        "prof_id": profId,
        "category": category,
        "is_favorite": isFavorite,
        "start_time": startTime,
        "end_time": endTime,
        "status": status,
        "profName": profName,
        "title": title,
        "average_rate": averageRate,
      };
}
