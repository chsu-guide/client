class TeacherShort {
  int? id;
  String? fullName;

  TeacherShort({this.id, this.fullName});

  TeacherShort.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = this.id;
    data['full_name'] = this.fullName;
    return data;
  }
}

class BuildingList {
  int? id;
  String? name;
  List<AuditoriumShort> auditoriums = [];

  BuildingList({this.id, this.name, this.auditoriums = const []});

  BuildingList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['auditoriums'] != null) {
      auditoriums = <AuditoriumShort>[];
      json['auditoriums'].forEach((v) {
        auditoriums.add(AuditoriumShort.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = this.id;
    data['name'] = this.name;
    data['auditoriums'] = this.auditoriums
        .map((json) => json.toJson())
        .toList();
    return data;
  }
}

class AuditoriumShort {
  int? id;
  String? name;
  String? building;

  AuditoriumShort({this.id, this.name, this.building});

  AuditoriumShort.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    building = json['building'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = this.id;
    data['name'] = this.name;
    data['building'] = this.building;
    return data;
  }
}

class Discipline {
  int? id;
  String? name;

  Discipline({this.id, this.name});

  Discipline.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
