class SignIn {
  String? password;
  String? username;

  SignIn({
    this.password,
    this.username,
  });

  SignIn.fromJson(Map<String, dynamic> json) {
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['password'] = password;
    data['username'] = username;
    return data;
  }
}
