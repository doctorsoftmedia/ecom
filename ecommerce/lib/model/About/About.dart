class About {
  String about;

  About({this.about});

  About.fromJson(Map<String, dynamic> json) {
    about = json['About'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['About'] = this.about;
    return data;
  }
}