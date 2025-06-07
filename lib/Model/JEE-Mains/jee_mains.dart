class JeeMainsApi {
  String? id;
  String? year;
  String? file;

  JeeMainsApi({this.id, this.year, this.file});

  JeeMainsApi.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    year = json["year"];
    file = json["file"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["year"] = year;
    _data["file"] = file;
    return _data;
  }
}
