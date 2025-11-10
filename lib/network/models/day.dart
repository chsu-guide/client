import 'package:equatable/equatable.dart';
import '../models/time_slot.dart';

class Day extends Equatable {
  final DateTime day;
  final int index;
  final List<TimeSlot> timeSlots;

  const Day({required this.day, required this.index, required this.timeSlots});
  
  @override
  List<Object?> get props => [day, index, timeSlots];
}