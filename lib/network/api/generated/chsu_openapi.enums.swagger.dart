// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum EntityModelNotificationEntityType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('COMMISSION_EXAM')
  commissionExam('COMMISSION_EXAM'),
  @JsonValue('EXPIRES_REG_ADDRESS')
  expiresRegAddress('EXPIRES_REG_ADDRESS');

  final String? value;

  const EntityModelNotificationEntityType(this.value);
}

enum NotificationEntityRequestBodyType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('COMMISSION_EXAM')
  commissionExam('COMMISSION_EXAM'),
  @JsonValue('EXPIRES_REG_ADDRESS')
  expiresRegAddress('EXPIRES_REG_ADDRESS');

  final String? value;

  const NotificationEntityRequestBodyType(this.value);
}

enum ParamsTimeTableRequestBodyParamType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TIME_TABLE_MODE')
  timeTableMode('TIME_TABLE_MODE');

  final String? value;

  const ParamsTimeTableRequestBodyParamType(this.value);
}

enum ParamsTimeTableModelParamType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TIME_TABLE_MODE')
  timeTableMode('TIME_TABLE_MODE');

  final String? value;

  const ParamsTimeTableModelParamType(this.value);
}

enum ErrorDescriptionStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('100 CONTINUE')
  value_100Continue('100 CONTINUE'),
  @JsonValue('101 SWITCHING_PROTOCOLS')
  value_101SwitchingProtocols('101 SWITCHING_PROTOCOLS'),
  @JsonValue('102 PROCESSING')
  value_102Processing('102 PROCESSING'),
  @JsonValue('103 EARLY_HINTS')
  value_103EarlyHints('103 EARLY_HINTS'),
  @JsonValue('103 CHECKPOINT')
  value_103Checkpoint('103 CHECKPOINT'),
  @JsonValue('200 OK')
  value_200Ok('200 OK'),
  @JsonValue('201 CREATED')
  value_201Created('201 CREATED'),
  @JsonValue('202 ACCEPTED')
  value_202Accepted('202 ACCEPTED'),
  @JsonValue('203 NON_AUTHORITATIVE_INFORMATION')
  value_203NonAuthoritativeInformation('203 NON_AUTHORITATIVE_INFORMATION'),
  @JsonValue('204 NO_CONTENT')
  value_204NoContent('204 NO_CONTENT'),
  @JsonValue('205 RESET_CONTENT')
  value_205ResetContent('205 RESET_CONTENT'),
  @JsonValue('206 PARTIAL_CONTENT')
  value_206PartialContent('206 PARTIAL_CONTENT'),
  @JsonValue('207 MULTI_STATUS')
  value_207MultiStatus('207 MULTI_STATUS'),
  @JsonValue('208 ALREADY_REPORTED')
  value_208AlreadyReported('208 ALREADY_REPORTED'),
  @JsonValue('226 IM_USED')
  value_226ImUsed('226 IM_USED'),
  @JsonValue('300 MULTIPLE_CHOICES')
  value_300MultipleChoices('300 MULTIPLE_CHOICES'),
  @JsonValue('301 MOVED_PERMANENTLY')
  value_301MovedPermanently('301 MOVED_PERMANENTLY'),
  @JsonValue('302 FOUND')
  value_302Found('302 FOUND'),
  @JsonValue('302 MOVED_TEMPORARILY')
  value_302MovedTemporarily('302 MOVED_TEMPORARILY'),
  @JsonValue('303 SEE_OTHER')
  value_303SeeOther('303 SEE_OTHER'),
  @JsonValue('304 NOT_MODIFIED')
  value_304NotModified('304 NOT_MODIFIED'),
  @JsonValue('305 USE_PROXY')
  value_305UseProxy('305 USE_PROXY'),
  @JsonValue('307 TEMPORARY_REDIRECT')
  value_307TemporaryRedirect('307 TEMPORARY_REDIRECT'),
  @JsonValue('308 PERMANENT_REDIRECT')
  value_308PermanentRedirect('308 PERMANENT_REDIRECT'),
  @JsonValue('400 BAD_REQUEST')
  value_400BadRequest('400 BAD_REQUEST'),
  @JsonValue('401 UNAUTHORIZED')
  value_401Unauthorized('401 UNAUTHORIZED'),
  @JsonValue('402 PAYMENT_REQUIRED')
  value_402PaymentRequired('402 PAYMENT_REQUIRED'),
  @JsonValue('403 FORBIDDEN')
  value_403Forbidden('403 FORBIDDEN'),
  @JsonValue('404 NOT_FOUND')
  value_404NotFound('404 NOT_FOUND'),
  @JsonValue('405 METHOD_NOT_ALLOWED')
  value_405MethodNotAllowed('405 METHOD_NOT_ALLOWED'),
  @JsonValue('406 NOT_ACCEPTABLE')
  value_406NotAcceptable('406 NOT_ACCEPTABLE'),
  @JsonValue('407 PROXY_AUTHENTICATION_REQUIRED')
  value_407ProxyAuthenticationRequired('407 PROXY_AUTHENTICATION_REQUIRED'),
  @JsonValue('408 REQUEST_TIMEOUT')
  value_408RequestTimeout('408 REQUEST_TIMEOUT'),
  @JsonValue('409 CONFLICT')
  value_409Conflict('409 CONFLICT'),
  @JsonValue('410 GONE')
  value_410Gone('410 GONE'),
  @JsonValue('411 LENGTH_REQUIRED')
  value_411LengthRequired('411 LENGTH_REQUIRED'),
  @JsonValue('412 PRECONDITION_FAILED')
  value_412PreconditionFailed('412 PRECONDITION_FAILED'),
  @JsonValue('413 PAYLOAD_TOO_LARGE')
  value_413PayloadTooLarge('413 PAYLOAD_TOO_LARGE'),
  @JsonValue('413 REQUEST_ENTITY_TOO_LARGE')
  value_413RequestEntityTooLarge('413 REQUEST_ENTITY_TOO_LARGE'),
  @JsonValue('414 URI_TOO_LONG')
  value_414UriTooLong('414 URI_TOO_LONG'),
  @JsonValue('414 REQUEST_URI_TOO_LONG')
  value_414RequestUriTooLong('414 REQUEST_URI_TOO_LONG'),
  @JsonValue('415 UNSUPPORTED_MEDIA_TYPE')
  value_415UnsupportedMediaType('415 UNSUPPORTED_MEDIA_TYPE'),
  @JsonValue('416 REQUESTED_RANGE_NOT_SATISFIABLE')
  value_416RequestedRangeNotSatisfiable('416 REQUESTED_RANGE_NOT_SATISFIABLE'),
  @JsonValue('417 EXPECTATION_FAILED')
  value_417ExpectationFailed('417 EXPECTATION_FAILED'),
  @JsonValue('418 I_AM_A_TEAPOT')
  value_418IAmATeapot('418 I_AM_A_TEAPOT'),
  @JsonValue('419 INSUFFICIENT_SPACE_ON_RESOURCE')
  value_419InsufficientSpaceOnResource('419 INSUFFICIENT_SPACE_ON_RESOURCE'),
  @JsonValue('420 METHOD_FAILURE')
  value_420MethodFailure('420 METHOD_FAILURE'),
  @JsonValue('421 DESTINATION_LOCKED')
  value_421DestinationLocked('421 DESTINATION_LOCKED'),
  @JsonValue('422 UNPROCESSABLE_ENTITY')
  value_422UnprocessableEntity('422 UNPROCESSABLE_ENTITY'),
  @JsonValue('423 LOCKED')
  value_423Locked('423 LOCKED'),
  @JsonValue('424 FAILED_DEPENDENCY')
  value_424FailedDependency('424 FAILED_DEPENDENCY'),
  @JsonValue('425 TOO_EARLY')
  value_425TooEarly('425 TOO_EARLY'),
  @JsonValue('426 UPGRADE_REQUIRED')
  value_426UpgradeRequired('426 UPGRADE_REQUIRED'),
  @JsonValue('428 PRECONDITION_REQUIRED')
  value_428PreconditionRequired('428 PRECONDITION_REQUIRED'),
  @JsonValue('429 TOO_MANY_REQUESTS')
  value_429TooManyRequests('429 TOO_MANY_REQUESTS'),
  @JsonValue('431 REQUEST_HEADER_FIELDS_TOO_LARGE')
  value_431RequestHeaderFieldsTooLarge('431 REQUEST_HEADER_FIELDS_TOO_LARGE'),
  @JsonValue('451 UNAVAILABLE_FOR_LEGAL_REASONS')
  value_451UnavailableForLegalReasons('451 UNAVAILABLE_FOR_LEGAL_REASONS'),
  @JsonValue('500 INTERNAL_SERVER_ERROR')
  value_500InternalServerError('500 INTERNAL_SERVER_ERROR'),
  @JsonValue('501 NOT_IMPLEMENTED')
  value_501NotImplemented('501 NOT_IMPLEMENTED'),
  @JsonValue('502 BAD_GATEWAY')
  value_502BadGateway('502 BAD_GATEWAY'),
  @JsonValue('503 SERVICE_UNAVAILABLE')
  value_503ServiceUnavailable('503 SERVICE_UNAVAILABLE'),
  @JsonValue('504 GATEWAY_TIMEOUT')
  value_504GatewayTimeout('504 GATEWAY_TIMEOUT'),
  @JsonValue('505 HTTP_VERSION_NOT_SUPPORTED')
  value_505HttpVersionNotSupported('505 HTTP_VERSION_NOT_SUPPORTED'),
  @JsonValue('506 VARIANT_ALSO_NEGOTIATES')
  value_506VariantAlsoNegotiates('506 VARIANT_ALSO_NEGOTIATES'),
  @JsonValue('507 INSUFFICIENT_STORAGE')
  value_507InsufficientStorage('507 INSUFFICIENT_STORAGE'),
  @JsonValue('508 LOOP_DETECTED')
  value_508LoopDetected('508 LOOP_DETECTED'),
  @JsonValue('509 BANDWIDTH_LIMIT_EXCEEDED')
  value_509BandwidthLimitExceeded('509 BANDWIDTH_LIMIT_EXCEEDED'),
  @JsonValue('510 NOT_EXTENDED')
  value_510NotExtended('510 NOT_EXTENDED'),
  @JsonValue('511 NETWORK_AUTHENTICATION_REQUIRED')
  value_511NetworkAuthenticationRequired('511 NETWORK_AUTHENTICATION_REQUIRED');

  final String? value;

  const ErrorDescriptionStatus(this.value);
}

enum NotificationEntitiesSearchFindAllSendNotificationByKeysGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('COMMISSION_EXAM')
  commissionExam('COMMISSION_EXAM'),
  @JsonValue('EXPIRES_REG_ADDRESS')
  expiresRegAddress('EXPIRES_REG_ADDRESS');

  final String? value;

  const NotificationEntitiesSearchFindAllSendNotificationByKeysGetType(
    this.value,
  );
}

enum ParamsTimeTablesSearchFindByParamTypeGetParamType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TIME_TABLE_MODE')
  timeTableMode('TIME_TABLE_MODE');

  final String? value;

  const ParamsTimeTablesSearchFindByParamTypeGetParamType(this.value);
}
