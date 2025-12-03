import 'package:chsu_schedule_app/widgets/schedule_card.dart';

class ScheduleItem {
  int? id;
  DateTime? startTime;
  DateTime? endTime;
  String? lessonType;
  String? lessonTypeAbbreviated;
  String? disciplineName;
  List<Auditorium> auditoriumName = [];
  List<TeacherName> teacherName = [];
  List<Group> groupList = [];

  ScheduleItem({
    this.id,
    this.startTime,
    this.endTime,
    this.lessonType,
    this.lessonTypeAbbreviated,
    this.disciplineName,
    this.auditoriumName = const [],
    this.teacherName = const [],
    this.groupList = const [],
  });

  ScheduleItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startTime = DateTime.parse(json['start_time']);
    endTime = DateTime.parse(json['end_time']);
    lessonType = json['lesson_type'];
    lessonTypeAbbreviated = json['lesson_type_abbreviated'];
    disciplineName = json['discipline_name'];
    auditoriumName = <Auditorium>[];
    if (json['auditorium_name'] != null) {
      json['auditorium_name'].forEach((v) {
        auditoriumName.add(Auditorium.fromJson(v));
      });
    }
    teacherName = <TeacherName>[];
    if (json['teacher_name'] != null) {
      json['teacher_name'].forEach((v) {
        teacherName.add(TeacherName.fromJson(v));
      });
    }
    groupList = <Group>[];
    if (json['group_list'] != null) {
      json['group_list'].forEach((v) {
        groupList.add(Group.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['lesson_type'] = this.lessonType;
    data['lesson_type_abbreviated'] = this.lessonTypeAbbreviated;
    data['discipline_name'] = this.disciplineName;
    data['auditorium_name'] = this.auditoriumName
        .map((v) => v.toJson())
        .toList();
    data['teacher_name'] = this.teacherName.map((v) => v.toJson()).toList();
    data['group_list'] = this.groupList.map((v) => v.toJson()).toList();
    return data;
  }

  ScheduleCard toCard() {
    return ScheduleCard(
      timeSlot: '${formatTime(this.startTime!)} - ${formatTime(this.endTime!)}',
      subjectName: this.disciplineName ?? "",
      lessonType: this.lessonType ?? "",
      cabinet: "",
      location: "",
      pg: null,
      tutors: this.teacherName
          .map(
            (teacher) =>
                '${teacher.lastName} ${teacher.firstName} ${teacher.middleName}',
          )
          .toSet(),
      studentGroups: this.groupList.map((group) => group.name ?? "").toSet(),
      date: this.startTime ?? DateTime.now(),
    );
  }
}

class TeacherName {
  late String lastName;
  late String firstName;
  String? middleName;

  TeacherName({
    required this.lastName,
    required this.firstName,
    this.middleName,
  });

  TeacherName.fromJson(Map<String, dynamic> json) {
    lastName = json['last_name'];
    firstName = json['first_name'];
    middleName = json['middle_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['last_name'] = this.lastName;
    data['first_name'] = this.firstName;
    data['middle_name'] = this.middleName;
    return data;
  }
}

class Auditorium {
  String? name;
  String? number;
  int? buildingId;

  Auditorium({this.name, this.number, this.buildingId});

  Auditorium.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    number = json['number'];
    buildingId = json['building_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['number'] = number;
    data['building_id'] = buildingId;
    return data;
  }
}

class Group {
  int? id;
  String? name;

  Group({this.id, this.name});

  Group.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['number'] = name;
    return data;
  }
}

class BuildingList {}

String _formatDate(DateTime date) {
  return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
}

String formatTime(DateTime date) {
  return '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
}
