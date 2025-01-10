class CategoryModel {
  int? id;
  String? name;
  String? slug;
  String? description;
  String? image;
  String? type;

  CategoryModel(
      {this.id, this.name, this.slug, this.description, this.image, this.type});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    image = json['image'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['description'] = description;
    data['image'] = image;
    data['type'] = type;
    return data;
  }
}
