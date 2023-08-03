class LessonModel {

  late final List<Items> items;
  late final int count;
  late final String anyKey;

  LessonModel({ required this.items, required this.count, required this.anyKey});

  LessonModel.fromJson(Map<String, dynamic> json) {

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
  late final int duration;
  late final String category;
  late final bool locked;


  Items(
      {
        required this.name,
        required this.duration,
        required this.category,
        required this.locked,
        });

  Items.fromJson(Map<String, dynamic> json) {

    name = json['name'];
    duration = json['duration'];
    category = json['category'];
    locked = json['locked'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this.name;
    data['duration'] = this.duration;
    data['category'] = this.category;
    data['locked'] = this.locked;

    return data;
  }
}