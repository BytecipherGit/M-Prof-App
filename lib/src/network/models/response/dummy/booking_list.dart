class BookingList {
  int? id;
  String? startTime;
  String? endTime;
  String? name;
  String? location;
  String? service;
  String? status;
  DateTime? timestamp;

  BookingList({
    this.id,
    this.startTime,
    this.endTime,
    this.name,
    this.location,
    this.service,
    this.status,
    this.timestamp,
  });

  factory BookingList.fromJson(Map<String, dynamic> json) =>
      BookingList(
        id: json["id"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        name: json["name"],
        location: json["location"],
        service: json["service"],
        status: json["status"],
        timestamp: json["timestamp"] == null
            ? null
            : DateTime.parse(json["timestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "start_time": startTime,
        "end_time": endTime,
        "name": name,
        "location": location,
        "service": service,
        "status": status,
        "timestamp": timestamp!.toIso8601String(),
      };
}
