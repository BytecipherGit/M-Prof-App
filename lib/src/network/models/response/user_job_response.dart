import 'dart:convert';

UserJobResponse userJobResponseFromJson(String str) =>
    UserJobResponse.fromJson(json.decode(str));

String userJobResponseToJson(UserJobResponse data) =>
    json.encode(data.toJson());

class UserJobResponse {
  int? status;
  String? message;
  List<UserJobs>? data;

  UserJobResponse({
    this.status,
    this.message,
    this.data,
  });

  factory UserJobResponse.fromJson(Map<String, dynamic> json) =>
      UserJobResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<UserJobs>.from(
                json["data"].map((x) => UserJobs.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class UserJobs {
  String? serviceJobId;
  String? apiUrl;
  String? camsServiceId;
  String? bureauId;
  String? assetId;
  String? assetNo;
  String? assetName;
  String? assetCity;
  String? assetState;
  String? assetPostcode;
  String? jobType;
  String? jobDescription;
  String? requestTime;
  String? scheduledTime;
  String? newJob;
  String? lastAccessed;
  String? camsName;

  UserJobs({
    this.serviceJobId,
    this.apiUrl,
    this.camsServiceId,
    this.bureauId,
    this.assetId,
    this.assetNo,
    this.assetName,
    this.assetCity,
    this.assetState,
    this.assetPostcode,
    this.jobType,
    this.jobDescription,
    this.requestTime,
    this.scheduledTime,
    this.newJob,
    this.lastAccessed,
    this.camsName,
  });

  factory UserJobs.fromJson(Map<String, dynamic> json) => UserJobs(
        serviceJobId: json["serviceJobID"],
        apiUrl: json["apiURL"],
        camsServiceId: json["camsServiceID"],
        bureauId: json["bureauID"],
        assetId: json["assetID"],
        assetNo: json["assetNo"],
        assetName: json["assetName"],
        assetCity: json["assetCity"],
        assetState: json["assetState"],
        assetPostcode: json["assetPostcode"],
        jobType: json["jobType"],
        jobDescription: json["jobDescription"],
        requestTime: json["requestTime"],
        scheduledTime: json["scheduledTime"],
        newJob: json["newJob"],
        lastAccessed: json["lastAccessed"],
        camsName: json["camsName"],
      );

  Map<String, dynamic> toJson() => {
        "serviceJobID": serviceJobId,
        "apiURL": apiUrl,
        "camsServiceID": camsServiceId,
        "bureauID": bureauId,
        "assetID": assetId,
        "assetNo": assetNo,
        "assetName": assetName,
        "assetCity": assetCity,
        "assetState": assetState,
        "assetPostcode": assetPostcode,
        "jobType": jobType,
        "jobDescription": jobDescription,
        "requestTime": requestTime,
        "scheduledTime": scheduledTime,
        "newJob": newJob,
        "lastAccessed": lastAccessed,
        "camsName": camsName,
      };
}
