// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals

class Pokedex {
  String? name;
  String? url;

  Pokedex({this.name, this.url});

  Pokedex.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}
