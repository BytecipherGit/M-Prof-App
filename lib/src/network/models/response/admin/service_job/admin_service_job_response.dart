class AdminServiceJobResponse {
  int? status;
  String? message;
  List<ServiceJobList>? data;

  AdminServiceJobResponse({
    this.status,
    this.message,
    this.data,
  });

  factory AdminServiceJobResponse.fromJson(Map<String, dynamic> json) =>
      AdminServiceJobResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<ServiceJobList>.from(
                json["data"].map((x) => ServiceJobList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class ServiceJobList {
  String? serviceJobID;
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
  String? techLinkUserId;
  String? techLinkUserEmail;
  String? techLinkUserFirstName;
  String? techLinkUserLastName;

  ServiceJobList({
    this.serviceJobID,
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
    this.techLinkUserId,
    this.techLinkUserEmail,
    this.techLinkUserFirstName,
    this.techLinkUserLastName,
  });

  factory ServiceJobList.fromJson(Map<String, dynamic> json) => ServiceJobList(
        serviceJobID: json["serviceJobID"],
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
        techLinkUserId: json["techLinkUserID"],
        techLinkUserEmail: json["techLinkUserEmail"],
        techLinkUserFirstName: json["techLinkUserFirstName"],
        techLinkUserLastName: json["techLinkUserLastName"],
      );

  Map<String, dynamic> toJson() => {
        "serviceJobID": serviceJobID,
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
        "techLinkUserID": techLinkUserId,
        "techLinkUserEmail": techLinkUserEmail,
        "techLinkUserFirstName": techLinkUserFirstName,
        "techLinkUserLastName": techLinkUserLastName,
      };
}
