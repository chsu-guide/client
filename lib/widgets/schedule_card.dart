import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String _timeSlot;
  final String _subjectName;
  final String _lessonType;
  final String? _pg;
  final Set<String>? _tutors;
  final Set<String>? _studentGroups;
  final String? _cabinet;
  final String? _location;
  final bool _customTileExpanded = false;

  ///
  /// (Чтобы не отображался список групп или преподов, передайте пустое множество)
  /// - timeSlot:       начало и конец занятия
  /// - subjectName:    название дисциплины
  /// - pg:             номер подгруппы
  /// - tutors:         список преподавателей
  /// - studentGroups:  список групп
  /// - lessonType:     тип занятия (лекционное, лабораторная, экзамен и пр.)
  /// - cabinet:        номер аудитории
  /// - location:       адрес местопровождения занятия
  /// 
  const ScheduleCard({
    super.key,
    required String timeSlot,
    required String subjectName,
    required String lessonType,
    String? cabinet,
    String? location,
    String? pg,
    Set<String>? tutors,
    Set<String>? studentGroups
  }) : _timeSlot = timeSlot,
       _pg = pg,
       _subjectName = subjectName,
       _tutors = tutors,
       _studentGroups = studentGroups,
       _lessonType = lessonType,
       _location = location,
       _cabinet = cabinet;

  Widget _createList(Set<String>? list) {
    if (list == null) {
      return Text("");
    } else
    if (list.length == 1)
    {
      return Text(list.first, style: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis));
    } else {
      return ExpansionTile(
        title: Text(list.first, style: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis)),
        trailing: Icon(_customTileExpanded ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down),
        //onExpansionChanged: (bool expanded) {
        //  setState(() => _customTileExpanded = expanded);
        //},
        children: _tutors!.map((item) {
          return ListTile(title: Text(list.first, style: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis)));
        }).toList()
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        splashColor: Colors.black.withAlpha(20),
        onTap: () => {},
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // время
              Text(
                _timeSlot,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 5),

              // название
              Text(
                _subjectName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, overflow: TextOverflow.ellipsis),
              ),
              SizedBox(height: 5),

              // тип и пг
              Row(
                children: [
                  Text(_lessonType, style: TextStyle(fontSize: 12)),
                  SizedBox(width: 10),
                  Text(_pg == null ? "" : "пг-$_pg", style: TextStyle(fontSize: 12)),
                ],
              ),
              SizedBox(height: 7),

              // преподаватели
              Visibility(
                visible: _tutors != null && _tutors.isNotEmpty ? true : false ,
                child: Row(
                  children: [
                    Icon(Icons.person_sharp),
                    SizedBox(width: 5),
                    _createList(_tutors),
                    SizedBox(height: 7),
                  ],
                ),
              ),

              // группы
              Visibility(
                visible: _studentGroups != null && _studentGroups.isNotEmpty ? true : false ,
                child: Row(
                  children: [
                    Icon(Icons.group_sharp),
                    SizedBox(width: 5),
                    _createList(_studentGroups),
                    SizedBox(height: 7),
                  ],
                ),
              ),

              // кабинет и место
              Visibility(
                visible: _location == null ? false : true,
                child: Row(
                  children: [
                    Icon(Icons.location_on_sharp),
                    SizedBox(width: 5),
                    Row(
                      children: [
                        Text(_cabinet ?? "", style: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis)),
                        SizedBox(width: 5),
                        Text(_location == null ? "" : "($_location)", style: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis))
                      ]
                    )
                  ],
                ) 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
