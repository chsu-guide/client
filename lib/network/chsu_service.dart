import 'dart:convert' show utf8, json, jsonDecode;
import 'dart:io';
import 'package:chsu_schedule_app/classes/schedule_target.dart' show ScheduleTarget;
import 'package:flutter/foundation.dart';
import '../widgets/schedule_card.dart';

class ChsuService {
  final HttpClient _client = HttpClient();
  final String _apiUsername = "mobil";
  final String _apiPassword = "ds3m#2nn";
  final String _apiUrl = 'api.chsu.ru';
  String? _token;

  Future<void> authenticate() async {
    try {
      final request = await _client.postUrl(Uri.http(_apiUrl, '/api/auth/signin'));
      request.headers.set('accept', 'application/json');
      request.headers.set('Content-Type', 'application/json');
      request.write(
        json.encode({
          'username': _apiUsername,
          'password': _apiPassword,
        })
      );
      
      final responseBody = await request.close();
      final responseString = await responseBody.transform(utf8.decoder).join();
      final responseJson = jsonDecode(responseString);
      
      //debugPrint('Authentication response: $responseJson');
      _token = responseJson['data'];
    } catch (e) {
      debugPrint('Authentication error: $e\n');
    }
  }

  Future<List<String>> getGroups() async{
    try {
      var req = await _client.getUrl(Uri.http(_apiUrl, "/api/group/v1"));
      req.headers.add("Authorization", "Bearer $_token");
      
      var responseBody = await req.close();
      var responseString = await responseBody.transform(utf8.decoder).join();

      //debugPrint(responseString);

      // Парсим JSON
      List<dynamic> data = jsonDecode(responseString);
      // Преобразуем каждый элемент в строку (title)
      List<String> groups = data.map<String>((item) => item['title'] as String).toList();
      return groups;
    } catch (e) {
      // В случае ошибки возвращаем пустой список или обрабатываем ошибку как-то иначе
      debugPrint('Error: $e');
      return [];
    }
  }

  Future<int?> getGroupId(String groupName) async {
  try {
    var req = await _client.getUrl(Uri.http(_apiUrl, "/api/group/v1"));
    req.headers.add("Authorization", "Bearer $_token");
    
    var responseBody = await req.close();
    var responseString = await responseBody.transform(utf8.decoder).join();

    List<dynamic> data = jsonDecode(responseString);
    
    var group = data.firstWhere(
      (item) => item['title'] == groupName,
      orElse: () => null,
    );
    
    return group?['id'] as int?;
  } catch (e) {
    debugPrint('Error: $e');
    return null;
  }
}

  Future<List<String>> getAuditoriums() async {
    try {
      var req = await _client.getUrl(Uri.http(_apiUrl, "/api/auditorium/v1"));
      req.headers.add("Authorization", "Bearer $_token");

      var unwrapped = await req.close();
      var stringData = await unwrapped.transform(utf8.decoder).join();

      //debugPrint(stringData);

      // Парсим JSON
      List<dynamic> data = jsonDecode(stringData);
      
      // Фильтруем аудитории по buildName и преобразуем в номера
      List<String> classrooms = data
          .where((item) => item['buildName'] == "Учебно-лабораторный корпус № 1 (Советский, 8)")
          .map<String>((item) => item['number'] as String)
          .toList();
      
      return classrooms;
    } catch (e) {
      // В случае ошибки возвращаем пустой список
      debugPrint('Error: $e');
      return [];
    }
  }

  Future<List<String>> getTutors() async {
    try {
      var req = await _client.getUrl(Uri.http(_apiUrl, "/api/teacher/v1"));
      req.headers.add("Authorization", "Bearer $_token");

      var unwrapped = await req.close();
      var stringData = await unwrapped.transform(utf8.decoder).join();

      //debugPrint(stringData);

      // Парсим JSON
      List<dynamic> data = jsonDecode(stringData);
      
      // Преобразуем каждый элемент в ФИО (поле fio)
      List<String> teachers = data
          .map<String>((item) => item['fio'] as String)
          .toList();
      
      return teachers;
    } catch (e) {
      // В случае ошибки возвращаем пустой список
      debugPrint('Error: $e');
      return [];
    }
  }

    Future<String?> getTutorId(String tutorName) async {
    try {
      var req = await _client.getUrl(Uri.http(_apiUrl, "/api/teacher/v1"));
      req.headers.add("Authorization", "Bearer $_token");
      
      var responseBody = await req.close();
      var responseString = await responseBody.transform(utf8.decoder).join();

      //debugPrint(responseString);

      // Парсим JSON
      List<dynamic> data = jsonDecode(responseString);
      var tutor = data.firstWhere(
        (item) => item['fio'] == tutorName,
        orElse: () => null,
      );
    
      return tutor?['id']?.toString();
    }
    catch (e) {
      debugPrint('Error: $e');
      return "";
    }
  }


  Future<List<ScheduleCard>> getSchedule(String startDate, String endDate, ScheduleTarget selectedTarget, String searchValue) async {
    try {
      String url;

      switch (selectedTarget) {
        case ScheduleTarget.student:
          // Получаем ID группы и добавляем в URL
          int? groupId = await getGroupId(searchValue);
          if (groupId == null) {
            debugPrint('Группа не найдена: $searchValue');
            return [];
          }
          url = "api/timetable/v1/from/$startDate/to/$endDate/groupId/$groupId";
          break;

        case ScheduleTarget.tutor:
          // Получаем ID препода и добавляем в URL
          String? lecturerId = await getTutorId(searchValue);
          if (lecturerId == null) {
            debugPrint('Преподаватель не найден: $searchValue');
            return [];
          }
          url = "api/timetable/v1/from/$startDate/to/$endDate/lecturerId/$lecturerId";
          break;

        case ScheduleTarget.auditorium:
          // Для аудитории оставляем базовый URL (пока)
          url = "/api/timetable/v1/event/from/$startDate/to/$endDate";
          break;
      }
      
      var req = await _client.getUrl(Uri.http(_apiUrl, url));
      req.headers.add("Authorization", "Bearer $_token");
      var responseBody = await req.close();
      var responseString = await responseBody.transform(utf8.decoder).join();

      // Парсим JSON
      List<dynamic> data = jsonDecode(responseString);
      List<dynamic> filteredData = data;
    
      if (selectedTarget == ScheduleTarget.auditorium) {
        filteredData = data.where((item) {
          if (item['auditory'] != null) {
            return (item['auditory']['title'] as String).toLowerCase() == searchValue.toLowerCase();
          }
          return false;
        }).toList();
      }

      // Преобразуем в карточки
      List<ScheduleCard> schedule = filteredData.map<ScheduleCard>((item) {
      String timeSlot = '${item['startTime']} - ${item['endTime']}';
      String subjectName = item['discipline']['title'];
      String lessonType = item['lessontype'];
      Set<String> tutors = {};
      if (item['lecturers'] != null) {
        for (var lecturer in item['lecturers']) {
          tutors.add(lecturer['fio'] as String);
        }
      }
      Set<String> studentGroups = {};
      if (item['groups'] != null) {
        for (var group in item['groups']) {
          studentGroups.add(group['title'] as String);
        }
      }
      String? cabinet = item['auditory']?['title'];
      String? location = item['build']?['title'];
      
      return ScheduleCard(
        timeSlot: timeSlot,
        subjectName: subjectName,
        lessonType: lessonType,
        tutors: tutors.isNotEmpty ? tutors : null,
        studentGroups: studentGroups.isNotEmpty ? studentGroups : null,
        cabinet: cabinet,
        location: location,
      );
    }).toList();

      
      return schedule;
    } catch (e) {
      debugPrint('Error: $e');
      return [];
    }
  }
}