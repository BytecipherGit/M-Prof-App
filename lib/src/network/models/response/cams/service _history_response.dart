import 'dart:convert';

ServiceHistoryResponse serviceHistoryResponseFromJson(String str) =>
    ServiceHistoryResponse.fromJson(json.decode(str));

String serviceHistoryResponseToJson(ServiceHistoryResponse data) =>
    json.encode(data.toJson());

class ServiceHistoryResponse {
  int? status;
  String? message;
  List<ServiceHistory>? data;

  ServiceHistoryResponse({
    this.status,
    this.message,
    this.data,
  });

  factory ServiceHistoryResponse.fromJson(Map<String, dynamic> json) =>
      ServiceHistoryResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<ServiceHistory>.from(
                json["data"].map((x) => ServiceHistory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class ServiceHistory {
  String? serviceId;
  String? jobNo;
  String? jobRequest;
  String? jobType;
  String? requestedTime;
  String? completedTime;
  String? company;
  String? technician;
  String? orderNo;
  String? docketNo;
  String? notes;
  String? techNotes;
  String? outcome;

  ServiceHistory({
    this.serviceId,
    this.jobNo,
    this.jobRequest,
    this.jobType,
    this.requestedTime,
    this.completedTime,
    this.company,
    this.technician,
    this.orderNo,
    this.docketNo,
    this.notes,
    this.techNotes,
    this.outcome,
  });

  factory ServiceHistory.fromJson(Map<String, dynamic> json) => ServiceHistory(
        serviceId: json["serviceID"],
        jobNo: json["jobNo"],
        jobRequest: json["jobRequest"],
        jobType: json["jobType"],
        requestedTime: json["requestedTime"],
        completedTime: json["completedTime"],
        company: json["company"],
        technician: json["technician"],
        orderNo: json["orderNo"],
        docketNo: json["docketNo"],
        notes: json["notes"],
        techNotes: json["techNotes"],
        outcome: json["outcome"],
      );

  Map<String, dynamic> toJson() => {
        "serviceID": serviceId,
        "jobNo": jobNo,
        "jobRequest": jobRequest,
        "jobType": jobType,
        "requestedTime": requestedTime,
        "completedTime": completedTime,
        "company": company,
        "technician": technician,
        "orderNo": orderNo,
        "docketNo": docketNo,
        "notes": notes,
        "techNotes": techNotes,
        "outcome": outcome,
      };
}
