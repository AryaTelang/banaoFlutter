class ProgramModel {

  late final List<Items> items;
  late final int count;
  late final String anyKey;

  ProgramModel(
      {
      required this.items,
      required this.count,
      required this.anyKey});

  ProgramModel.fromJson(Map<String, dynamic> json) {

    if (json['items'] != null) {
      items = (json['items'] as List)
          .map((v) => Items.fromJson(v))
          .toList();
    }
    count = json['count'];
    anyKey = json['anyKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    data['anyKey'] = this.anyKey;
    return data;
  }
}

class Items {
  late final String name;
  late final String category;
  late final int lesson;

  late final String userName;
  late final String mobileNo;
  late final String emailId;
  late final String city;
  late final String password;

  Items(
      {required this.name,
      required this.category,
      required this.lesson,
      required this.userName,
      required this.mobileNo,
      required this.emailId,
      required this.city,
      required this.password});

  Items.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    category = json['category'];
    lesson = json['lesson'];

    userName = json['userName'];
    mobileNo = json['mobileNo'];
    emailId = json['emailId'];
    city = json['city'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this.name;
    data['category'] = this.category;
    data['lesson'] = this.lesson;
    data['userName'] = this.userName;
    data['mobileNo'] = this.mobileNo;
    data['emailId'] = this.emailId;
    data['city'] = this.city;
    data['password'] = this.password;
    return data;
  }
}
