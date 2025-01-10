class FilterModel {
  int? categoryType;

  FilterModel({this.categoryType});

  FilterModel.fromJson(Map<String, dynamic> json) {
    categoryType = json['category_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category_type'] = categoryType;
    return data;
  }
}
