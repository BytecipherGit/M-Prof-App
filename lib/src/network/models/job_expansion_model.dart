class JobDetailsExpansionModel {
  JobDetailsExpansionModel({
    required this.title,
    required this.description,
  });

  String title;
  String description;

  factory JobDetailsExpansionModel.fromJson(Map<String, dynamic> json) =>
      JobDetailsExpansionModel(
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
  };
}