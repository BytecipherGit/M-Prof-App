class NotificationResponse {
  int? status;
  String? message;
  List<Notifications>? data;

  NotificationResponse({
    this.status,
    this.message,
    this.data,
  });

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      NotificationResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? null
            : List<Notifications>.from(
                json["data"].map((x) => Notifications.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Notifications {
  String? notificationId;
  String? techLinkUserId;
  String? message;
  String? data;
  String? notificationDate;
  String? readDate;
  String? deletedDate;
  String? sentDate;
  String? source;
  String? title;

  Notifications({
    this.notificationId,
    this.techLinkUserId,
    this.message,
    this.data,
    this.notificationDate,
    this.readDate,
    this.deletedDate,
    this.sentDate,
    this.source,
    this.title,
  });

  factory Notifications.fromJson(Map<String, dynamic> json) => Notifications(
        notificationId: json["notificationID"],
        techLinkUserId: json["techLinkUserID"],
        message: json["message"],
        data: json["data"],
        notificationDate: json["notificationDate"],
        readDate: json["readDate"],
        deletedDate: json["deletedDate"],
        sentDate: json["sentDate"],
        source: json["source"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "notificationID": notificationId,
        "techLinkUserID": techLinkUserId,
        "message": message,
        "data": data,
        "notificationDate": notificationDate,
        "readDate": readDate,
        "deletedDate": deletedDate,
        "sentDate": sentDate,
        "source": source,
        "title": title,
      };
}
