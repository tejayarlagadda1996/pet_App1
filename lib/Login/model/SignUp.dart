class SignUp {
  String? city;
  String? email;
  int? mobile;
  String? parentName;

  SignUp({this.city, this.email, this.mobile, this.parentName});

  SignUp.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    email = json['email'];
    mobile = json['mobile'];
    parentName = json['parentName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city'] = city;
    data['email'] = email;
    data['mobile'] = mobile;
    data['parentName'] = parentName;
    return data;
  }
}