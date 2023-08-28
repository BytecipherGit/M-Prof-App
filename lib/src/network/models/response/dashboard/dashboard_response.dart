class DashBoardResponse {
  bool? success;
  int? code;
  DashBoard? data;
  String? message;

  DashBoardResponse({
    this.success,
    this.code,
    this.data,
    this.message,
  });

  factory DashBoardResponse.fromJson(Map<String, dynamic> json) =>
      DashBoardResponse(
        success: json["success"],
        code: json["code"],
        data: json["data"] == null ? null : DashBoard.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "code": code,
        "data": data!.toJson(),
        "message": message,
      };
}

class DashBoard {
  List<Category>? category;
  List<Doctor>? doctor;
  List<Barber>? barbers;
  List<dynamic>? gymTrainer;
  List<dynamic>? yogaInstructor;

  DashBoard({
    this.category,
    this.doctor,
    this.barbers,
    this.gymTrainer,
    this.yogaInstructor,
  });

  factory DashBoard.fromJson(Map<String, dynamic> json) => DashBoard(
        category: List<Category>.from(
            json["category"].map((x) => Category.fromJson(x))),
        doctor:
            List<Doctor>.from(json["Doctor"].map((x) => Doctor.fromJson(x))),
        barbers:
            List<Barber>.from(json["Barbers"].map((x) => Barber.fromJson(x))),
        gymTrainer: List<dynamic>.from(json["Gym Trainer"].map((x) => x)),
        yogaInstructor:
            List<dynamic>.from(json["Yoga Instructor"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "category": List<dynamic>.from(category!.map((x) => x.toJson())),
        "Doctor": List<dynamic>.from(doctor!.map((x) => x.toJson())),
        "Barbers": List<dynamic>.from(barbers!.map((x) => x.toJson())),
        "Gym Trainer": List<dynamic>.from(gymTrainer!.map((x) => x)),
        "Yoga Instructor": List<dynamic>.from(yogaInstructor!.map((x) => x)),
      };
}

class Barber {
  String? image;
  String? profName;
  int? isFavorite;
  String? startTime;
  String? endTime;
  int? status;
  int? id;
  String? address;
  dynamic lat;
  dynamic lng;
  dynamic averageRate;

  Barber({
    this.image,
    this.profName,
    this.isFavorite,
    this.startTime,
    this.endTime,
    this.status,
    this.id,
    this.address,
    this.lat,
    this.lng,
    this.averageRate,
  });

  factory Barber.fromJson(Map<String, dynamic> json) => Barber(
        image: json["image"],
        profName: json["profName"],
        isFavorite: json["is_favorite"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        status: json["status"],
        id: json["id"],
        address: json["address"],
        lat: json["lat"],
        lng: json["lng"],
        averageRate: json["average_rate"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "profName": profName,
        "is_favorite": isFavorite,
        "start_time": startTime,
        "end_time": endTime,
        "status": status,
        "id": id,
        "address": address,
        "lat": lat,
        "lng": lng,
        "average_rate": averageRate,
      };
}

class Category {
  String? category;
  int? id;
  String? shopName;
  dynamic image;

  Category({
    this.category,
    this.id,
    this.shopName,
    this.image,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        category: json["category"],
        id: json["id"],
        shopName: json["shopName"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "id": id,
        "shopName": shopName,
        "image": image,
      };
}

class Doctor {
  String? image;
  String? profName;
  int? isFavorite;
  String? startTime;
  String? endTime;
  int? status;
  String? title;
  int? id;
  String? averageRate;

  Doctor({
    this.image,
    this.profName,
    this.isFavorite,
    this.startTime,
    this.endTime,
    this.status,
    this.title,
    this.id,
    this.averageRate,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        image: json["image"],
        profName: json["profName"],
        isFavorite: json["is_favorite"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        status: json["status"],
        title: json["title"],
        id: json["id"],
        averageRate: json["average_rate"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "profName": profName,
        "is_favorite": isFavorite,
        "start_time": startTime,
        "end_time": endTime,
        "status": status,
        "title": title,
        "id": id,
        "average_rate": averageRate,
      };
}
