import 'package:chopper/chopper.dart' as chopper;

/// Метод для распаковки данных типа Response<T?>.
///
/// - Вызывает исключение, если код ответа HTTP не 2xx.
/// - Вызывает исключение, если тело ответа пустое.
T unwrapResponse<T>(chopper.Response<T?> response) {
  final status = response.statusCode;
  
  if (status >= 200 && status < 300) {
    final body = response.body;
    if (body == null) {
      throw Exception('Пустое тело ответа (код: $status)');
    }
    return body;
  }

  final err = response.error ?? 'HTTP $status';
  throw Exception('Ошибка запроса API: $err (код: $status)');
}

/// Возвращает null, если ответ не удался или тело null.
T? unwrapNullable<T>(chopper.Response<T?> response) {
  final status = response.statusCode;
  if (status >= 200 && status < 300) return response.body;
  return null;
}
