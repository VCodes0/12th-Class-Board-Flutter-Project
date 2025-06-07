class JeeAdvanceApi {
  String? id;
  String? year;

  JeeAdvanceApi({this.id, this.year});

  JeeAdvanceApi.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    year = json["year"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["year"] = year;
    return _data;
  }
}
