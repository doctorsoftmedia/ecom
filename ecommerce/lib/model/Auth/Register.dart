class SignIn {
  String userID;
  String email;
  String password;
  String confirmPassword;
  String verificationCode;

  SignIn(
      {this.userID,
      this.email,
      this.password,
      this.confirmPassword,
      this.verificationCode});

  SignIn.fromJson(Map<String, dynamic> json) {
    userID = json['UserID'];
    email = json['Email'];
    password = json['Password'];
    confirmPassword = json['ConfirmPassword'];
    verificationCode = json['VerificationCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserID'] = this.userID;
    data['Email'] = this.email;
    data['Password'] = this.password;
    data['ConfirmPassword'] = this.confirmPassword;
    data['VerificationCode'] = this.verificationCode;
    return data;
  }
}
