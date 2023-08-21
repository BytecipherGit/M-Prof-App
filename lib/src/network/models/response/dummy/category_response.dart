class CategoryListResponse {
  int? id;
  String? name;
  String? image;

  CategoryListResponse({
    this.id,
    this.name,
    this.image,
  });

  factory CategoryListResponse.fromJson(Map<String, dynamic> json) => CategoryListResponse(
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
