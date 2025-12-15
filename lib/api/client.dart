import 'dart:convert';

import 'package:chsu_schedule_app/api/metadata.dart' as meta;
import 'package:chsu_schedule_app/api/schedule.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, [this.statusCode]);

  @override
  String toString() => 'ApiException: $message (Status: $statusCode)';
}

class ApiClient {
  final String _baseUrl;
  final http.Client _client;
  final Map<String, String> _defaultHeaders;

  ApiClient({
    String? baseUrl,
    http.Client? client,
    Map<String, String>? defaultHeaders,
  }) : _client = client ?? http.Client(),
       _defaultHeaders = defaultHeaders ?? {'Content-Type': 'application/json'},
       _baseUrl = baseUrl ?? "https://chsu.chiffa.lol/api";

  Uri _buildUri(String endpoint, [Map<String, dynamic>? queryParams]) {
    final path = endpoint.startsWith('/') ? endpoint : '/$endpoint';
    final uri = Uri.parse('$_baseUrl$path');

    if (queryParams != null && queryParams.isNotEmpty) {
      return uri.replace(
        queryParameters: queryParams.map(
          (key, value) => MapEntry(key, value.toString()),
        ),
      );
    }

    return uri;
  }

  T _handleResponse<T>(
    http.Response response,
    T Function(Map<String, dynamic>)? fromJson,
  ) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.isEmpty) {
        return {} as T;
      }

      final data = jsonDecode(response.body);

      if (fromJson != null && data is Map<String, dynamic>) {
        return fromJson(data);
      }

      return data as T;
    } else {
      throw ApiException(_getErrorMessage(response), response.statusCode);
    }
  }

  String _getErrorMessage(http.Response response) {
    try {
      final body = jsonDecode(response.body);
      return body['message'] ?? body['error'] ?? 'Request failed';
    } catch (e) {
      return 'Request failed with status: ${response.statusCode}';
    }
  }

  void dispose() {
    _client.close();
  }

  Future<T> get<T>(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    final uri = _buildUri(endpoint, queryParams);
    debugPrint('Uri is $uri');
    final response = await _client.get(uri, headers: this._defaultHeaders);

    return _handleResponse<T>(response, fromJson);
  }
}

class ChsuApiService {
  final ApiClient _apiClient;

  ChsuApiService(ApiClient? client) : _apiClient = client ?? ApiClient();

  Future<List<ScheduleItem>> getStudentSchedule(
    int groupId,
    DateTime start,
    DateTime end,
  ) async {
    final response = await _apiClient.get<List<dynamic>>(
      '/schedule',
      queryParams: {
        "group": groupId,
        "start": start.millisecondsSinceEpoch ~/ 1000,
        "end": end.millisecondsSinceEpoch ~/ 1000,
      },
    );
    return response.map((json) => ScheduleItem.fromJson(json)).toList();
  }

  Future<List<ScheduleItem>> getStudentScheduleByName(
    String groupName,
    DateTime start,
    DateTime end,
  ) async {
    final response = await _apiClient.get<List<dynamic>>(
      '/schedule',
      queryParams: {
        "group": groupName,
        "start": start.millisecondsSinceEpoch ~/ 1000,
        "end": end.millisecondsSinceEpoch ~/ 1000,
      },
    );
    return response.map((json) => ScheduleItem.fromJson(json)).toList();
  }

  Future<List<ScheduleItem>> getTeacherSchedule(
    int teacherId,
    DateTime start,
    DateTime end,
  ) async {
    final response = await _apiClient.get<List<dynamic>>(
      '/schedule/teacher',
      queryParams: {
        "teacher": teacherId,
        "start": start.millisecondsSinceEpoch ~/ 1000,
        "end": end.millisecondsSinceEpoch ~/ 1000,
      },
    );
    return response.map((json) => ScheduleItem.fromJson(json)).toList();
  }

  Future<List<ScheduleItem>> getTeacherScheduleByName(
    String teacherName,
    DateTime start,
    DateTime end,
  ) async {
    final response = await _apiClient.get<List<dynamic>>(
      '/schedule/teacher',
      queryParams: {
        "teacher": teacherName,
        "start": start.millisecondsSinceEpoch ~/ 1000,
        "end": end.millisecondsSinceEpoch ~/ 1000,
      },
    );
    return response.map((json) => ScheduleItem.fromJson(json)).toList();
  }

  Future<List<ScheduleItem>> getAuditoriumSchedule(
    int auditoriumId,
    DateTime start,
    DateTime end,
  ) async {
    final response = await _apiClient.get<List<dynamic>>(
      '/schedule/auditorium',
      queryParams: {
        "Auditorium": auditoriumId,
        "start": start.millisecondsSinceEpoch ~/ 1000,
        "end": end.millisecondsSinceEpoch ~/ 1000,
      },
    );
    return response.map((json) => ScheduleItem.fromJson(json)).toList();
  }

  Future<List<ScheduleItem>> getAuditoriumScheduleByName(
    String auditoriumName,
    DateTime start,
    DateTime end,
  ) async {
    final response = await _apiClient.get<List<dynamic>>(
      '/schedule/auditorium',
      queryParams: {
        "auditorium": auditoriumName,
        "start": start.millisecondsSinceEpoch ~/ 1000,
        "end": end.millisecondsSinceEpoch ~/ 1000,
      },
    );
    return response.map((json) => ScheduleItem.fromJson(json)).toList();
  }

  Future<List<Group>> getGroupList() async {
    final response = await _apiClient.get<List<dynamic>>('/metadata/groups');
    return response.map((json) => Group.fromJson(json)).toList();
  }

  Future<List<meta.TeacherShort>> getTeacherList() async {
    final response = await _apiClient.get<List<dynamic>>('/metadata/teachers');
    return response.map((json) => meta.TeacherShort.fromJson(json)).toList();
  }

  Future<List<meta.BuildingList>> getAuditoriumList() async {
    final response = await _apiClient.get<List<dynamic>>(
      '/metadata/auditoriums',
    );
    return response.map((json) => meta.BuildingList.fromJson(json)).toList();
  }

  Future<List<meta.Discipline>> getDisciplineList() async {
    final response = await _apiClient.get<List<dynamic>>(
      '/metadata/disciplines',
    );
    return response.map((json) => meta.Discipline.fromJson(json)).toList();
  }
}
