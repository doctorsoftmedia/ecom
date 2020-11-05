class SignIn {
  String userID;
  String password;

  SignIn({this.userID, this.password});

  SignIn.fromJson(Map<String, dynamic> json) {
    userID = json['UserID'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserID'] = this.userID;
    data['Password'] = this.password;
    return data;
  }
}
