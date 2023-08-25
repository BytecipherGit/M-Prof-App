class SpecialisationsList {
  int? id;
  String? title;
  String? image;

  SpecialisationsList({
    this.id,
    this.title,
    this.image,
  });

  factory SpecialisationsList.fromJson(Map<String, dynamic> json) =>
      SpecialisationsList(
        id: json["id"],
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
      };
}
