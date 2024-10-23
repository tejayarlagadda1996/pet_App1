class OwnerInfoModel {
  CustomerProfile? customerProfile;
  int? status;
  String? message;

  OwnerInfoModel({this.customerProfile, this.status, this.message});

  OwnerInfoModel.fromJson(Map<String, dynamic> json) {
    customerProfile = json['customerProfile'] != null
        ? CustomerProfile.fromJson(json['customerProfile'])
        : null;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (customerProfile != null) {
      data['customerProfile'] = customerProfile!.toJson();
    }
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}

class CustomerProfile {
  String? parentUserName;
  String? gender;
  String? email;
  String? mobile;
  String? image;
  String? parentCustomerUUID;
  String? emailVerified;
  String? mobileVerified;
  String? city;

  CustomerProfile(
      {this.parentUserName,
      this.gender,
      this.email,
      this.mobile,
      this.image,
      this.parentCustomerUUID,
      this.emailVerified,
      this.mobileVerified,
      this.city});

  CustomerProfile.fromJson(Map<String, dynamic> json) {
    parentUserName = json['parentUserName'];
    gender = json['gender'];
    email = json['email'];
    mobile = json['mobile'];
    image = json['image'];
    parentCustomerUUID = json['parentCustomerUUID'];
    emailVerified = json['emailVerified'];
    mobileVerified = json['mobileVerified'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['parentUserName'] = parentUserName;
    data['gender'] = gender;
    data['email'] = email;
    data['mobile'] = mobile;
    data['image'] = image;
    data['parentCustomerUUID'] = parentCustomerUUID;
    data['emailVerified'] = emailVerified;
    data['mobileVerified'] = mobileVerified;
    data['city'] = city;
    return data;
  }
}