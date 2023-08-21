import 'dart:convert';

JobOutcomeResponse jobOutcomeResponseFromJson(String str) =>
    JobOutcomeResponse.fromJson(json.decode(str));

String jobOutcomeResponseToJson(JobOutcomeResponse data) =>
    json.encode(data.toJson());

class JobOutcomeResponse {
  int? status;
  String? message;
  List<JobOutcome>? data;

  JobOutcomeResponse({
    this.status,
    this.message,
    this.data,
  });

  factory JobOutcomeResponse.fromJson(Map<String, dynamic> json) =>
      JobOutcomeResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            :List<JobOutcome>.from(
            json["data"].map((x) => JobOutcome.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class JobOutcome {
  String? jobOutcome;

  JobOutcome({
    this.jobOutcome,
  });

  factory JobOutcome.fromJson(Map<String, dynamic> json) => JobOutcome(
        jobOutcome: json["jobOutcome"],
      );

  Map<String, dynamic> toJson() => {
        "jobOutcome": jobOutcome,
      };
}
