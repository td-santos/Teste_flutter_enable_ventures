class UserModel {
  String id;
  String name;
  String token;
  String photo;

  UserModel({this.id, this.name, this.token, this.photo});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    token = json['token'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['token'] = this.token;
    data['photo'] = this.photo;
    return data;
  }
}