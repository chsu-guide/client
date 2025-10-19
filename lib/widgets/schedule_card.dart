import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String _timeStart, _timeEnd;
  final String? _pg; // подгруппа (если есть)
  final String _subjectName;
  final String _tutorName;
  final String _type; // лекция/лаба/экзамен...
  final String _location;

  const ScheduleCard({
    super.key,
    required String timeStart,
    required String timeEnd,
    String? pg,
    required String subjectName,
    required String tutorName,
    required String type,
    required String location,
  }) : _timeStart = timeStart,
       _timeEnd = timeEnd,
       _pg = pg,
       _subjectName = subjectName,
       _tutorName = tutorName,
       _type = type,
       _location = location;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.black.withAlpha(30),
        onTap: () => {},
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$_timeStart — $_timeEnd',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 5),
              Text(
                _subjectName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(_type, style: TextStyle(fontSize: 14)),
                  SizedBox(width: 10),
                  Text(_pg ?? "ПГ-?", style: TextStyle(fontSize: 14)),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Icon(Icons.person_sharp),
                  SizedBox(width: 5),
                  Text(_tutorName, style: TextStyle(fontSize: 14)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_on_sharp),
                  SizedBox(width: 5),
                  Text(_location, style: TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
