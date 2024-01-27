class SignUpBody {
  String firstName;
  String lastName;
  String tel;
  String email;
  String password;
  String keepMeSignedIn;
  SignUpBody({
    required this.firstName,
    required this.lastName,
    required this.tel,
    required this.email,
    required this.password,
    required this.keepMeSignedIn,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["firstName"] = firstName;
    data["lastName"] = lastName;
    data["tel"] = tel;
    data["email"] = email;
    data["password"] = password;
    data["keepMeSignedIn"] = keepMeSignedIn;
    return data;
  }
}
