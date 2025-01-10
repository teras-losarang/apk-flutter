class UserModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  Null emailVerifiedAt;
  int? status;
  String? createdAt;
  String? updatedAt;
  String? token;
  String? password;
  int? isOutlet;
  String? mapKey;
  String? apiKey;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.emailVerifiedAt,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.token,
    this.password,
    this.isOutlet,
    this.mapKey,
    this.apiKey,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    emailVerifiedAt = json['email_verified_at'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    token = json['token'];
    password = json['password'];
    isOutlet = json['is_outlet'];
    mapKey = json['map_key'];
    apiKey = json['api_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['email_verified_at'] = emailVerifiedAt;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['token'] = token;
    data['password'] = password;
    data['is_outlet'] = isOutlet;
    data['map_key'] = mapKey;
    data['api_key'] = apiKey;
    return data;
  }
}
