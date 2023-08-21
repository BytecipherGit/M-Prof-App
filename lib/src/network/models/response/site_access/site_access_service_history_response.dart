
class SiteAccessServiceHistoryResponse {
  int? status;
  String? message;
  List<SiteAccessServiceHistory>? data;

  SiteAccessServiceHistoryResponse({
    this.status,
    this.message,
    this.data,
  });

  factory SiteAccessServiceHistoryResponse.fromJson(Map<String, dynamic> json) =>
      SiteAccessServiceHistoryResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<SiteAccessServiceHistory>.from(
                json["data"].map((x) => SiteAccessServiceHistory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class SiteAccessServiceHistory {
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

  SiteAccessServiceHistory({
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

  factory SiteAccessServiceHistory.fromJson(Map<String, dynamic> json) => SiteAccessServiceHistory(
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
