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
  final DateTime? _date;

  const ScheduleCard({
    super.key,
    required String timeSlot,
    required String subjectName,
    required String lessonType,
    String? cabinet,
    String? location,
    String? pg,
    Set<String>? tutors,
    Set<String>? studentGroups,
    required DateTime date
  }) : _timeSlot = timeSlot,
       _pg = pg,
       _subjectName = subjectName,
       _tutors = tutors,
       _studentGroups = studentGroups,
       _lessonType = lessonType,
       _location = location,
       _cabinet = cabinet,
       _date = date;

  get date => _date;

  Widget _createList(Set<String>? list, BuildContext context) {
    if (list == null || list.isEmpty) {
      return const SizedBox.shrink();
    } else if (list.length == 1) {
      return Text(
        list.first, 
        style: const TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis),
      );
    } else {
      // Используем StatefulBuilder для управления состоянием расширения
      return StatefulBuilder(
        builder: (context, setState) {
          bool isExpanded = false;
          
          return SizedBox(
            width: double.infinity, // Ограничиваем ширину
            child: ExpansionTile(
              title: Text(
                '${list.first} и ещё ${list.length - 1}',
                style: const TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis),
              ),
              trailing: Icon(isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              onExpansionChanged: (bool expanded) {
                setState(() => isExpanded = expanded);
              },
              children: list.map((item) {
                return ListTile(
                  title: Text(item, style: const TextStyle(fontSize: 12)),
                );
              }).toList(),
            ),
          );
        },
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
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // время
              Text(
                _timeSlot,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 5),

              // название
              Text(
                _subjectName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 16, 
                  overflow: TextOverflow.ellipsis
                ),
              ),
              const SizedBox(height: 5),

              // тип и пг
              Row(
                children: [
                  Text(_lessonType, style: const TextStyle(fontSize: 12)),
                  const SizedBox(width: 10),
                  Text(_pg == null ? "" : "пг-$_pg", style: const TextStyle(fontSize: 12)),
                ],
              ),
              const SizedBox(height: 7),

              // преподаватели
              if (_tutors != null && _tutors.isNotEmpty) ...[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.person_sharp, size: 16),
                    const SizedBox(width: 5),
                    Expanded( // Добавляем Expanded для ограничения ширины
                      child: _createList(_tutors, context),
                    ),
                  ],
                ),
                const SizedBox(height: 7),
              ],

              // группы
              if (_studentGroups != null && _studentGroups.isNotEmpty) ...[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.group_sharp, size: 16),
                    const SizedBox(width: 5),
                    Expanded( // Добавляем Expanded для ограничения ширины
                      child: _createList(_studentGroups, context),
                    ),
                  ],
                ),
                const SizedBox(height: 7),
              ],

              // кабинет и место
              if (_location != null) ...[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.location_on_sharp, size: 16),
                    const SizedBox(width: 5),
                    Expanded( // Добавляем Expanded для ограничения ширины
                      child: Row(
                        children: [
                          Text(_cabinet ?? "", style: const TextStyle(fontSize: 12)),
                          if (_location != null) ...[
                            const SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                "($_location)",
                                style: const TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}