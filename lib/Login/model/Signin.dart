class SigninModel {
  String? token;
  String? parentCustomerUUID;
  String? email;
  int? status;
  String? message;

  SigninModel({
    this.token,
    this.parentCustomerUUID,
    this.email,
    this.status,
    this.message,
  });

  SigninModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    parentCustomerUUID = json['parentCustomerUUID'];
    email = json['email'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['parentCustomerUUID'] = parentCustomerUUID;
    data['email'] = email;
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}
