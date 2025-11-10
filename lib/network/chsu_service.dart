//import 'dart:convert';
//import 'dart:developer';
//import 'package:intl/intl.dart' show DateFormat;
//import '../network/models/time_slot.dart';
//import '../network/models/day.dart';
import 'api/generated/chsu_openapi.swagger.dart';
import 'package:chopper/chopper.dart' as chopper;

class ChsuService {
  static final String _apiUsername = "user";
  static final String _apiPassword = "password";
  static final String _apiUrl = 'api.chsu.ru';
  static final ChsuOpenapi service = ChsuOpenapi.create(
    baseUrl: Uri.http(_apiUrl, "/api"),
  );

  /* void decodeJson(List<dynamic> data)
  {
    //int week = data[0][0] as int;
    List<Day> scheduleDays = [];

    try {
      for (var item in data[0][1]) {
        List<TimeSlot> dayEntries = [];
        for (var d in item[2]) {
          dayEntries.add(TimeSlot(
            time: d[0] as String,
            type: d[1] as String,
            name: d[2] as String,
            location: d[3] as String,
            cabinet: d[4] as String,
            groups: d[5] as String,
            tutors: d[6] as String
          ));
        }

        scheduleDays.add(Day(
          day: DateFormat('dd.MM.yyyy').parse(item[0] as String),
          index: item[1] as int,
          timeSlots: dayEntries,
        ));
        }
    } catch (e) {
      log('oops! $e');
    }
  } */
}