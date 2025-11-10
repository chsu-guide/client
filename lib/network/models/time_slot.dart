import 'package:equatable/equatable.dart';

class TimeSlot extends Equatable {
  final String time;
  final String name;
  final String type;
  final String location;
  final String cabinet;
  final String tutors;
  final String groups;

  const TimeSlot({
    required this.time,
    required this.name,
    required this.type,
    required this.location,
    required this.cabinet,
    required this.tutors,
    required this.groups
  });

  @override
  List<Object?> get props => [time, name, type, location, cabinet, tutors, groups];
}