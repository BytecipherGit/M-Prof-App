class CategoryList {
  int? id;
  String? name;
  String? image;

  CategoryList({
    this.id,
    this.name,
    this.image,
  });

  factory CategoryList.fromJson(Map<String, dynamic> json) => CategoryList(
    id: json["id"],
    name: json["name"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
  };
}
