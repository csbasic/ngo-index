class SignIn {
  String email;
  String password;
  // String? userId;
  // String? rtcode;
  SignIn({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data["email"] = email;
    data["password"] = password;
    return data;
  }

  // SignIn.fromJson(Map<String, dynamic> json) {
  //   userId = json['data']['useID'];
  //   rtcode = json['data']['rtcode'];
  // }
}
