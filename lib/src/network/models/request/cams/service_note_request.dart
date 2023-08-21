class ServiceNoteRequest {
  int? serviceId;
  int? bureauId;
  String? techLinkAdminEmail;
  String? notes;
  String? docketNumber;
  String? jobOutcome;

  ServiceNoteRequest({
    this.serviceId,
    this.bureauId,
    this.techLinkAdminEmail,
    this.notes,
    this.docketNumber,
    this.jobOutcome,
  });

  factory ServiceNoteRequest.fromJson(Map<String, dynamic> json) =>
      ServiceNoteRequest(
        serviceId: json["serviceID"],
        bureauId: json["bureauID"],
        techLinkAdminEmail: json["techLinkAdminEmail"],
        notes: json["notes"],
        docketNumber: json["docketNumber"],
        jobOutcome: json["jobOutcome"],
      );

  Map<String, dynamic> toJson() => {
        "serviceID": serviceId,
        "bureauID": bureauId,
        "techLinkAdminEmail": techLinkAdminEmail,
        "notes": notes,
        "docketNumber": docketNumber,
        "jobOutcome": jobOutcome,
      };
}
