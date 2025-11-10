// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chsu_openapi.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbstractJsonSchemaPropertyObject _$AbstractJsonSchemaPropertyObjectFromJson(
  Map<String, dynamic> json,
) => AbstractJsonSchemaPropertyObject(
  title: json['title'] as String?,
  readOnly: json['readOnly'] as bool?,
);

Map<String, dynamic> _$AbstractJsonSchemaPropertyObjectToJson(
  AbstractJsonSchemaPropertyObject instance,
) => <String, dynamic>{'title': instance.title, 'readOnly': instance.readOnly};

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
  type: json['type'] as String?,
  properties: json['properties'] as Map<String, dynamic>?,
  requiredProperties:
      (json['requiredProperties'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
);

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
  'type': instance.type,
  'properties': instance.properties,
  'requiredProperties': instance.requiredProperties,
};

JsonSchema _$JsonSchemaFromJson(Map<String, dynamic> json) => JsonSchema(
  title: json['title'] as String?,
  description: json['description'] as String?,
  properties: json['properties'] as Map<String, dynamic>?,
  requiredProperties:
      (json['requiredProperties'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  definitions: json['definitions'] as Map<String, dynamic>?,
  type: json['type'] as String?,
  $schema: json[r'$schema'] as String?,
);

Map<String, dynamic> _$JsonSchemaToJson(JsonSchema instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'properties': instance.properties,
      'requiredProperties': instance.requiredProperties,
      'definitions': instance.definitions,
      'type': instance.type,
      r'$schema': instance.$schema,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links();

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{};

RepresentationModelObject _$RepresentationModelObjectFromJson(
  Map<String, dynamic> json,
) => RepresentationModelObject(
  links: json['_links'] == null
      ? null
      : Links.fromJson(json['_links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RepresentationModelObjectToJson(
  RepresentationModelObject instance,
) => <String, dynamic>{'_links': instance.links?.toJson()};

EntityModelNotificationEntity _$EntityModelNotificationEntityFromJson(
  Map<String, dynamic> json,
) => EntityModelNotificationEntity(
  type: entityModelNotificationEntityTypeNullableFromJson(json['type']),
  keyObject: json['keyObject'] as String?,
  textBody: json['textBody'] as String?,
  createdDate: json['createdDate'] == null
      ? null
      : DateTime.parse(json['createdDate'] as String),
  links: json['_links'] == null
      ? null
      : Links.fromJson(json['_links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EntityModelNotificationEntityToJson(
  EntityModelNotificationEntity instance,
) => <String, dynamic>{
  'type': entityModelNotificationEntityTypeNullableToJson(instance.type),
  'keyObject': instance.keyObject,
  'textBody': instance.textBody,
  'createdDate': _dateToJson(instance.createdDate),
  '_links': instance.links?.toJson(),
};

PageMetadata _$PageMetadataFromJson(Map<String, dynamic> json) => PageMetadata(
  size: (json['size'] as num?)?.toInt(),
  totalElements: (json['totalElements'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  number: (json['number'] as num?)?.toInt(),
);

Map<String, dynamic> _$PageMetadataToJson(PageMetadata instance) =>
    <String, dynamic>{
      'size': instance.size,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'number': instance.number,
    };

PagedModelEntityModelNotificationEntity
_$PagedModelEntityModelNotificationEntityFromJson(Map<String, dynamic> json) =>
    PagedModelEntityModelNotificationEntity(
      embedded: json['_embedded'] == null
          ? null
          : PagedModelEntityModelNotificationEntity$Embedded.fromJson(
              json['_embedded'] as Map<String, dynamic>,
            ),
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
      page: json['page'] == null
          ? null
          : PageMetadata.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PagedModelEntityModelNotificationEntityToJson(
  PagedModelEntityModelNotificationEntity instance,
) => <String, dynamic>{
  '_embedded': instance.embedded?.toJson(),
  '_links': instance.links?.toJson(),
  'page': instance.page?.toJson(),
};

CollectionModelEntityModelNotificationEntity
_$CollectionModelEntityModelNotificationEntityFromJson(
  Map<String, dynamic> json,
) => CollectionModelEntityModelNotificationEntity(
  embedded: json['_embedded'] == null
      ? null
      : CollectionModelEntityModelNotificationEntity$Embedded.fromJson(
          json['_embedded'] as Map<String, dynamic>,
        ),
  links: json['_links'] == null
      ? null
      : Links.fromJson(json['_links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CollectionModelEntityModelNotificationEntityToJson(
  CollectionModelEntityModelNotificationEntity instance,
) => <String, dynamic>{
  '_embedded': instance.embedded?.toJson(),
  '_links': instance.links?.toJson(),
};

EntityModelUserEntity _$EntityModelUserEntityFromJson(
  Map<String, dynamic> json,
) => EntityModelUserEntity(
  username: json['username'] as String?,
  password: json['password'] as String?,
  active: json['active'] as bool?,
  ldapAuth: json['ldapAuth'] as bool?,
  created: json['created'] == null
      ? null
      : DateTime.parse(json['created'] as String),
  changed: json['changed'] == null
      ? null
      : DateTime.parse(json['changed'] as String),
  links: json['_links'] == null
      ? null
      : Links.fromJson(json['_links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EntityModelUserEntityToJson(
  EntityModelUserEntity instance,
) => <String, dynamic>{
  'username': instance.username,
  'password': instance.password,
  'active': instance.active,
  'ldapAuth': instance.ldapAuth,
  'created': instance.created?.toIso8601String(),
  'changed': instance.changed?.toIso8601String(),
  '_links': instance.links?.toJson(),
};

PagedModelEntityModelUserEntity _$PagedModelEntityModelUserEntityFromJson(
  Map<String, dynamic> json,
) => PagedModelEntityModelUserEntity(
  embedded: json['_embedded'] == null
      ? null
      : PagedModelEntityModelUserEntity$Embedded.fromJson(
          json['_embedded'] as Map<String, dynamic>,
        ),
  links: json['_links'] == null
      ? null
      : Links.fromJson(json['_links'] as Map<String, dynamic>),
  page: json['page'] == null
      ? null
      : PageMetadata.fromJson(json['page'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PagedModelEntityModelUserEntityToJson(
  PagedModelEntityModelUserEntity instance,
) => <String, dynamic>{
  '_embedded': instance.embedded?.toJson(),
  '_links': instance.links?.toJson(),
  'page': instance.page?.toJson(),
};

CollectionModelRoleEntity _$CollectionModelRoleEntityFromJson(
  Map<String, dynamic> json,
) => CollectionModelRoleEntity(
  embedded: json['_embedded'] == null
      ? null
      : CollectionModelRoleEntity$Embedded.fromJson(
          json['_embedded'] as Map<String, dynamic>,
        ),
  links: json['_links'] == null
      ? null
      : Links.fromJson(json['_links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CollectionModelRoleEntityToJson(
  CollectionModelRoleEntity instance,
) => <String, dynamic>{
  '_embedded': instance.embedded?.toJson(),
  '_links': instance.links?.toJson(),
};

CollectionModelObject _$CollectionModelObjectFromJson(
  Map<String, dynamic> json,
) => CollectionModelObject(
  embedded: json['_embedded'] == null
      ? null
      : CollectionModelObject$Embedded.fromJson(
          json['_embedded'] as Map<String, dynamic>,
        ),
  links: json['_links'] == null
      ? null
      : Links.fromJson(json['_links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CollectionModelObjectToJson(
  CollectionModelObject instance,
) => <String, dynamic>{
  '_embedded': instance.embedded?.toJson(),
  '_links': instance.links?.toJson(),
};

EntityModelParamsTimeTable _$EntityModelParamsTimeTableFromJson(
  Map<String, dynamic> json,
) => EntityModelParamsTimeTable(
  value: json['value'] as String?,
  updateDate: json['updateDate'] == null
      ? null
      : DateTime.parse(json['updateDate'] as String),
  links: json['_links'] == null
      ? null
      : Links.fromJson(json['_links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EntityModelParamsTimeTableToJson(
  EntityModelParamsTimeTable instance,
) => <String, dynamic>{
  'value': instance.value,
  'updateDate': instance.updateDate?.toIso8601String(),
  '_links': instance.links?.toJson(),
};

PagedModelEntityModelParamsTimeTable
_$PagedModelEntityModelParamsTimeTableFromJson(Map<String, dynamic> json) =>
    PagedModelEntityModelParamsTimeTable(
      embedded: json['_embedded'] == null
          ? null
          : PagedModelEntityModelParamsTimeTable$Embedded.fromJson(
              json['_embedded'] as Map<String, dynamic>,
            ),
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
      page: json['page'] == null
          ? null
          : PageMetadata.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PagedModelEntityModelParamsTimeTableToJson(
  PagedModelEntityModelParamsTimeTable instance,
) => <String, dynamic>{
  '_embedded': instance.embedded?.toJson(),
  '_links': instance.links?.toJson(),
  'page': instance.page?.toJson(),
};

EntityModelRoleEntity _$EntityModelRoleEntityFromJson(
  Map<String, dynamic> json,
) => EntityModelRoleEntity(
  description: json['description'] as String?,
  links: json['_links'] == null
      ? null
      : Links.fromJson(json['_links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EntityModelRoleEntityToJson(
  EntityModelRoleEntity instance,
) => <String, dynamic>{
  'description': instance.description,
  '_links': instance.links?.toJson(),
};

PagedModelEntityModelRoleEntity _$PagedModelEntityModelRoleEntityFromJson(
  Map<String, dynamic> json,
) => PagedModelEntityModelRoleEntity(
  embedded: json['_embedded'] == null
      ? null
      : PagedModelEntityModelRoleEntity$Embedded.fromJson(
          json['_embedded'] as Map<String, dynamic>,
        ),
  links: json['_links'] == null
      ? null
      : Links.fromJson(json['_links'] as Map<String, dynamic>),
  page: json['page'] == null
      ? null
      : PageMetadata.fromJson(json['page'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PagedModelEntityModelRoleEntityToJson(
  PagedModelEntityModelRoleEntity instance,
) => <String, dynamic>{
  '_embedded': instance.embedded?.toJson(),
  '_links': instance.links?.toJson(),
  'page': instance.page?.toJson(),
};

CollectionModelEntityModelRoleEntity
_$CollectionModelEntityModelRoleEntityFromJson(Map<String, dynamic> json) =>
    CollectionModelEntityModelRoleEntity(
      embedded: json['_embedded'] == null
          ? null
          : CollectionModelEntityModelRoleEntity$Embedded.fromJson(
              json['_embedded'] as Map<String, dynamic>,
            ),
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CollectionModelEntityModelRoleEntityToJson(
  CollectionModelEntityModelRoleEntity instance,
) => <String, dynamic>{
  '_embedded': instance.embedded?.toJson(),
  '_links': instance.links?.toJson(),
};

NotificationEntityRequestBody _$NotificationEntityRequestBodyFromJson(
  Map<String, dynamic> json,
) => NotificationEntityRequestBody(
  id: (json['id'] as num?)?.toInt(),
  type: notificationEntityRequestBodyTypeNullableFromJson(json['type']),
  keyObject: json['keyObject'] as String?,
  textBody: json['textBody'] as String?,
  createdDate: json['createdDate'] == null
      ? null
      : DateTime.parse(json['createdDate'] as String),
);

Map<String, dynamic> _$NotificationEntityRequestBodyToJson(
  NotificationEntityRequestBody instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': notificationEntityRequestBodyTypeNullableToJson(instance.type),
  'keyObject': instance.keyObject,
  'textBody': instance.textBody,
  'createdDate': _dateToJson(instance.createdDate),
};

ParamsTimeTableRequestBody _$ParamsTimeTableRequestBodyFromJson(
  Map<String, dynamic> json,
) => ParamsTimeTableRequestBody(
  paramType: paramsTimeTableRequestBodyParamTypeNullableFromJson(
    json['paramType'],
  ),
  value: json['value'] as String?,
  updateDate: json['updateDate'] == null
      ? null
      : DateTime.parse(json['updateDate'] as String),
);

Map<String, dynamic> _$ParamsTimeTableRequestBodyToJson(
  ParamsTimeTableRequestBody instance,
) => <String, dynamic>{
  'paramType': paramsTimeTableRequestBodyParamTypeNullableToJson(
    instance.paramType,
  ),
  'value': instance.value,
  'updateDate': instance.updateDate?.toIso8601String(),
};

RoleEntityRequestBody _$RoleEntityRequestBodyFromJson(
  Map<String, dynamic> json,
) => RoleEntityRequestBody(
  name: json['name'] as String?,
  description: json['description'] as String?,
  roles:
      (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$RoleEntityRequestBodyToJson(
  RoleEntityRequestBody instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'roles': instance.roles,
};

RoleEntityResponse _$RoleEntityResponseFromJson(Map<String, dynamic> json) =>
    RoleEntityResponse(description: json['description'] as String?);

Map<String, dynamic> _$RoleEntityResponseToJson(RoleEntityResponse instance) =>
    <String, dynamic>{'description': instance.description};

UserEntityRequestBody _$UserEntityRequestBodyFromJson(
  Map<String, dynamic> json,
) => UserEntityRequestBody(
  id: (json['id'] as num?)?.toInt(),
  username: json['username'] as String?,
  password: json['password'] as String?,
  active: json['active'] as bool?,
  ldapAuth: json['ldapAuth'] as bool?,
  created: json['created'] == null
      ? null
      : DateTime.parse(json['created'] as String),
  changed: json['changed'] == null
      ? null
      : DateTime.parse(json['changed'] as String),
  roles:
      (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$UserEntityRequestBodyToJson(
  UserEntityRequestBody instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'password': instance.password,
  'active': instance.active,
  'ldapAuth': instance.ldapAuth,
  'created': instance.created?.toIso8601String(),
  'changed': instance.changed?.toIso8601String(),
  'roles': instance.roles,
};

RoleModel _$RoleModelFromJson(Map<String, dynamic> json) => RoleModel(
  name: json['name'] as String?,
  description: json['description'] as String?,
  privileges:
      (json['privileges'] as List<dynamic>?)
          ?.map((e) => StrRefModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$RoleModelToJson(RoleModel instance) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'privileges': instance.privileges?.map((e) => e.toJson()).toList(),
};

StrRefModel _$StrRefModelFromJson(Map<String, dynamic> json) =>
    StrRefModel(key: json['key'] as String?, val: json['val'] as String?);

Map<String, dynamic> _$StrRefModelToJson(StrRefModel instance) =>
    <String, dynamic>{'key': instance.key, 'val': instance.val};

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: (json['id'] as num?)?.toInt(),
  username: json['username'] as String?,
  password: json['password'] as String?,
  active: json['active'] as bool?,
  ldapAuth: json['ldapAuth'] as bool?,
  roles:
      (json['roles'] as List<dynamic>?)
          ?.map((e) => RoleModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  created: json['created'] == null
      ? null
      : DateTime.parse(json['created'] as String),
  changed: json['changed'] == null
      ? null
      : DateTime.parse(json['changed'] as String),
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'password': instance.password,
  'active': instance.active,
  'ldapAuth': instance.ldapAuth,
  'roles': instance.roles?.map((e) => e.toJson()).toList(),
  'created': instance.created?.toIso8601String(),
  'changed': instance.changed?.toIso8601String(),
};

ParamsTimeTableModel _$ParamsTimeTableModelFromJson(
  Map<String, dynamic> json,
) => ParamsTimeTableModel(
  paramType: paramsTimeTableModelParamTypeNullableFromJson(json['paramType']),
  value: json['value'] as String?,
);

Map<String, dynamic> _$ParamsTimeTableModelToJson(
  ParamsTimeTableModel instance,
) => <String, dynamic>{
  'paramType': paramsTimeTableModelParamTypeNullableToJson(instance.paramType),
  'value': instance.value,
};

AuthenticationRequest _$AuthenticationRequestFromJson(
  Map<String, dynamic> json,
) => AuthenticationRequest(
  username: json['username'] as String?,
  password: json['password'] as String?,
);

Map<String, dynamic> _$AuthenticationRequestToJson(
  AuthenticationRequest instance,
) => <String, dynamic>{
  'username': instance.username,
  'password': instance.password,
};

DataModelString _$DataModelStringFromJson(Map<String, dynamic> json) =>
    DataModelString(
      data: json['data'] as String?,
      error: json['error'] == null
          ? null
          : ErrorDescription.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataModelStringToJson(DataModelString instance) =>
    <String, dynamic>{'data': instance.data, 'error': instance.error?.toJson()};

ErrorDescription _$ErrorDescriptionFromJson(Map<String, dynamic> json) =>
    ErrorDescription(
      code: (json['code'] as num?)?.toInt(),
      status: errorDescriptionStatusNullableFromJson(json['status']),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ErrorDescriptionToJson(ErrorDescription instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': errorDescriptionStatusNullableToJson(instance.status),
      'description': instance.description,
    };

Pageable _$PageableFromJson(Map<String, dynamic> json) => Pageable(
  page: (json['page'] as num?)?.toInt(),
  size: (json['size'] as num?)?.toInt(),
  sort:
      (json['sort'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$PageableToJson(Pageable instance) => <String, dynamic>{
  'page': instance.page,
  'size': instance.size,
  'sort': instance.sort,
};

PageModelUserModel _$PageModelUserModelFromJson(Map<String, dynamic> json) =>
    PageModelUserModel(
      total: (json['total'] as num?)?.toInt(),
      content:
          (json['content'] as List<dynamic>?)
              ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PageModelUserModelToJson(PageModelUserModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

BaseModel _$BaseModelFromJson(Map<String, dynamic> json) =>
    BaseModel(id: (json['id'] as num).toInt(), title: json['title'] as String);

Map<String, dynamic> _$BaseModelToJson(BaseModel instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
};

TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) => TeacherModel(
  id: (json['id'] as num?)?.toInt(),
  lastName: json['lastName'] as String?,
  firstName: json['firstName'] as String?,
  middleName: json['middleName'] as String?,
  shortName: json['shortName'] as String?,
  fio: json['fio'] as String?,
);

Map<String, dynamic> _$TeacherModelToJson(TeacherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'shortName': instance.shortName,
      'fio': instance.fio,
    };

TimeTableModel _$TimeTableModelFromJson(Map<String, dynamic> json) =>
    TimeTableModel(
      id: (json['id'] as num?)?.toInt(),
      dateEvent: json['dateEvent'] == null
          ? null
          : DateTime.parse(json['dateEvent'] as String),
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      discipline: json['discipline'] == null
          ? null
          : BaseModel.fromJson(json['discipline'] as Map<String, dynamic>),
      groups:
          (json['groups'] as List<dynamic>?)
              ?.map((e) => BaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      build: json['build'] == null
          ? null
          : BaseModel.fromJson(json['build'] as Map<String, dynamic>),
      auditory: json['auditory'] == null
          ? null
          : BaseModel.fromJson(json['auditory'] as Map<String, dynamic>),
      lecturers:
          (json['lecturers'] as List<dynamic>?)
              ?.map((e) => TeacherModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      abbrlessontype: json['abbrlessontype'] as String?,
      lessontype: json['lessontype'] as String?,
      week: (json['week'] as num?)?.toInt(),
      weekday: (json['weekday'] as num?)?.toInt(),
      weekType: json['weekType'] as String?,
      onlineEvent: json['onlineEvent'] as String?,
      online: (json['online'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TimeTableModelToJson(TimeTableModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateEvent': _dateToJson(instance.dateEvent),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'discipline': instance.discipline?.toJson(),
      'groups': instance.groups?.map((e) => e.toJson()).toList(),
      'build': instance.build?.toJson(),
      'auditory': instance.auditory?.toJson(),
      'lecturers': instance.lecturers?.map((e) => e.toJson()).toList(),
      'abbrlessontype': instance.abbrlessontype,
      'lessontype': instance.lessontype,
      'week': instance.week,
      'weekday': instance.weekday,
      'weekType': instance.weekType,
      'onlineEvent': instance.onlineEvent,
      'online': instance.online,
    };

Skill _$SkillFromJson(Map<String, dynamic> json) =>
    Skill(code: json['code'] as String?, name: json['name'] as String?);

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
};

SkillModel _$SkillModelFromJson(Map<String, dynamic> json) => SkillModel(
  principalId: (json['principalId'] as num?)?.toInt(),
  username: json['username'] as String?,
  disciplines:
      (json['disciplines'] as List<dynamic>?)
          ?.map((e) => SkillRowModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$SkillModelToJson(SkillModel instance) =>
    <String, dynamic>{
      'principalId': instance.principalId,
      'username': instance.username,
      'disciplines': instance.disciplines?.map((e) => e.toJson()).toList(),
    };

SkillRowModel _$SkillRowModelFromJson(Map<String, dynamic> json) =>
    SkillRowModel(
      discipline: json['discipline'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)
              ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SkillRowModelToJson(SkillRowModel instance) =>
    <String, dynamic>{
      'discipline': instance.discipline,
      'skills': instance.skills?.map((e) => e.toJson()).toList(),
    };

PageModelRoleModel _$PageModelRoleModelFromJson(Map<String, dynamic> json) =>
    PageModelRoleModel(
      total: (json['total'] as num?)?.toInt(),
      content:
          (json['content'] as List<dynamic>?)
              ?.map((e) => RoleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PageModelRoleModelToJson(PageModelRoleModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

PageModelPersonModel _$PageModelPersonModelFromJson(
  Map<String, dynamic> json,
) => PageModelPersonModel(
  total: (json['total'] as num?)?.toInt(),
  content:
      (json['content'] as List<dynamic>?)
          ?.map((e) => PersonModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$PageModelPersonModelToJson(
  PageModelPersonModel instance,
) => <String, dynamic>{
  'total': instance.total,
  'content': instance.content?.map((e) => e.toJson()).toList(),
};

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) => PersonModel(
  id: (json['id'] as num).toInt(),
  guid: json['guid'] as String,
  fio: json['fio'] as String,
  lastName: json['lastName'] as String,
  firstName: json['firstName'] as String,
  middleName: json['middleName'] as String?,
  personNum: json['personNum'] as String?,
  email: json['email'] as String,
  active: (json['active'] as num?)?.toInt(),
  groups:
      (json['groups'] as List<dynamic>?)
          ?.map(
            (e) => StudentGroupPersonModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
  posts:
      (json['posts'] as List<dynamic>?)
          ?.map((e) => PostPersonModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  startAccessDate: json['startAccessDate'] == null
      ? null
      : DateTime.parse(json['startAccessDate'] as String),
  endAccessDate: json['endAccessDate'] == null
      ? null
      : DateTime.parse(json['endAccessDate'] as String),
);

Map<String, dynamic> _$PersonModelToJson(PersonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'guid': instance.guid,
      'fio': instance.fio,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'personNum': instance.personNum,
      'email': instance.email,
      'active': instance.active,
      'groups': instance.groups?.map((e) => e.toJson()).toList(),
      'posts': instance.posts?.map((e) => e.toJson()).toList(),
      'startAccessDate': instance.startAccessDate?.toIso8601String(),
      'endAccessDate': instance.endAccessDate?.toIso8601String(),
    };

PostPersonModel _$PostPersonModelFromJson(Map<String, dynamic> json) =>
    PostPersonModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      department: json['department'] == null
          ? null
          : BaseModel.fromJson(json['department'] as Map<String, dynamic>),
      main: json['main'] as bool?,
    );

Map<String, dynamic> _$PostPersonModelToJson(PostPersonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'department': instance.department?.toJson(),
      'main': instance.main,
    };

StudentGroupPersonModel _$StudentGroupPersonModelFromJson(
  Map<String, dynamic> json,
) => StudentGroupPersonModel(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  department: json['department'] == null
      ? null
      : BaseModel.fromJson(json['department'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StudentGroupPersonModelToJson(
  StudentGroupPersonModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'department': instance.department?.toJson(),
};

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) => StudentModel(
  id: (json['id'] as num).toInt(),
  guid: json['guid'] as String,
  fio: json['fio'] as String,
  lastName: json['lastName'] as String,
  firstName: json['firstName'] as String,
  middleName: json['middleName'] as String?,
  personNum: json['personNum'] as String?,
  email: json['email'] as String,
  groupName: json['groupName'] as String,
  groupId: (json['groupId'] as num).toInt(),
  department: json['department'] as String,
  departmentId: (json['departmentId'] as num).toInt(),
);

Map<String, dynamic> _$StudentModelToJson(StudentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'guid': instance.guid,
      'fio': instance.fio,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'personNum': instance.personNum,
      'email': instance.email,
      'groupName': instance.groupName,
      'groupId': instance.groupId,
      'department': instance.department,
      'departmentId': instance.departmentId,
    };

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    EmployeeModel(
      id: (json['id'] as num).toInt(),
      guid: json['guid'] as String,
      fio: json['fio'] as String,
      lastName: json['lastName'] as String,
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String?,
      personNum: json['personNum'] as String?,
      email: json['email'] as String,
      posts:
          (json['posts'] as List<dynamic>?)
              ?.map((e) => PostPersonModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EmployeeModelToJson(EmployeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'guid': instance.guid,
      'fio': instance.fio,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'personNum': instance.personNum,
      'email': instance.email,
      'posts': instance.posts?.map((e) => e.toJson()).toList(),
    };

MarkModel _$MarkModelFromJson(Map<String, dynamic> json) => MarkModel(
  formControlShort: json['formControlShort'] as String?,
  formControl: json['formControl'] as String?,
  discipline: json['discipline'] as String?,
  course: json['course'] as String?,
  term: json['term'] as String?,
  teachLastname: json['teachLastname'] as String?,
  teachFirstname: json['teachFirstname'] as String?,
  teachMiddlename: json['teachMiddlename'] as String?,
  year: json['year'] as String?,
  mark: json['mark'] as String?,
  principalId: (json['principalId'] as num?)?.toInt(),
  username: json['username'] as String?,
);

Map<String, dynamic> _$MarkModelToJson(MarkModel instance) => <String, dynamic>{
  'formControlShort': instance.formControlShort,
  'formControl': instance.formControl,
  'discipline': instance.discipline,
  'course': instance.course,
  'term': instance.term,
  'teachLastname': instance.teachLastname,
  'teachFirstname': instance.teachFirstname,
  'teachMiddlename': instance.teachMiddlename,
  'year': instance.year,
  'mark': instance.mark,
  'principalId': instance.principalId,
  'username': instance.username,
};

StudentGroupExtModel _$StudentGroupExtModelFromJson(
  Map<String, dynamic> json,
) => StudentGroupExtModel(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  course: (json['course'] as num?)?.toInt(),
  faculty: json['faculty'] == null
      ? null
      : BaseModel.fromJson(json['faculty'] as Map<String, dynamic>),
  chair: json['chair'] == null
      ? null
      : BaseModel.fromJson(json['chair'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StudentGroupExtModelToJson(
  StudentGroupExtModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'course': instance.course,
  'faculty': instance.faculty?.toJson(),
  'chair': instance.chair?.toJson(),
};

StudentGroupModel _$StudentGroupModelFromJson(Map<String, dynamic> json) =>
    StudentGroupModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$StudentGroupModelToJson(StudentGroupModel instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

DepartmentModel _$DepartmentModelFromJson(Map<String, dynamic> json) =>
    DepartmentModel(
      id: (json['id'] as num?)?.toInt(),
      parentId: (json['parentId'] as num?)?.toInt(),
      title: json['title'] as String?,
      shortTitle: json['shortTitle'] as String?,
      typeCode: json['typeCode'] as String?,
      typeTitle: json['typeTitle'] as String?,
    );

Map<String, dynamic> _$DepartmentModelToJson(DepartmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'title': instance.title,
      'shortTitle': instance.shortTitle,
      'typeCode': instance.typeCode,
      'typeTitle': instance.typeTitle,
    };

TreeModelDepartmentModel _$TreeModelDepartmentModelFromJson(
  Map<String, dynamic> json,
) => TreeModelDepartmentModel(
  node: json['node'] == null
      ? null
      : DepartmentModel.fromJson(json['node'] as Map<String, dynamic>),
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => TreeModelDepartmentModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$TreeModelDepartmentModelToJson(
  TreeModelDepartmentModel instance,
) => <String, dynamic>{
  'node': instance.node?.toJson(),
  'items': instance.items?.map((e) => e.toJson()).toList(),
};

SemesterModel _$SemesterModelFromJson(Map<String, dynamic> json) =>
    SemesterModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$SemesterModelToJson(SemesterModel instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

AuditoriumModel _$AuditoriumModelFromJson(Map<String, dynamic> json) =>
    AuditoriumModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      number: json['number'] as String?,
      buildName: json['buildName'] as String?,
      buildId: (json['buildId'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AuditoriumModelToJson(AuditoriumModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'buildName': instance.buildName,
      'buildId': instance.buildId,
      'height': instance.height,
      'length': instance.length,
      'width': instance.width,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
  href: json['href'] as String?,
  hreflang: json['hreflang'] as String?,
  title: json['title'] as String?,
  type: json['type'] as String?,
  deprecation: json['deprecation'] as String?,
  profile: json['profile'] as String?,
  name: json['name'] as String?,
  templated: json['templated'] as bool?,
);

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
  'href': instance.href,
  'hreflang': instance.hreflang,
  'title': instance.title,
  'type': instance.type,
  'deprecation': instance.deprecation,
  'profile': instance.profile,
  'name': instance.name,
  'templated': instance.templated,
};

PagedModelEntityModelNotificationEntity$Embedded
_$PagedModelEntityModelNotificationEntity$EmbeddedFromJson(
  Map<String, dynamic> json,
) => PagedModelEntityModelNotificationEntity$Embedded(
  notificationEntities:
      (json['notificationEntities'] as List<dynamic>?)
          ?.map(
            (e) => EntityModelNotificationEntity.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$PagedModelEntityModelNotificationEntity$EmbeddedToJson(
  PagedModelEntityModelNotificationEntity$Embedded instance,
) => <String, dynamic>{
  'notificationEntities': instance.notificationEntities
      ?.map((e) => e.toJson())
      .toList(),
};

CollectionModelEntityModelNotificationEntity$Embedded
_$CollectionModelEntityModelNotificationEntity$EmbeddedFromJson(
  Map<String, dynamic> json,
) => CollectionModelEntityModelNotificationEntity$Embedded(
  notificationEntities:
      (json['notificationEntities'] as List<dynamic>?)
          ?.map(
            (e) => EntityModelNotificationEntity.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      [],
);

Map<String, dynamic>
_$CollectionModelEntityModelNotificationEntity$EmbeddedToJson(
  CollectionModelEntityModelNotificationEntity$Embedded instance,
) => <String, dynamic>{
  'notificationEntities': instance.notificationEntities
      ?.map((e) => e.toJson())
      .toList(),
};

PagedModelEntityModelUserEntity$Embedded
_$PagedModelEntityModelUserEntity$EmbeddedFromJson(Map<String, dynamic> json) =>
    PagedModelEntityModelUserEntity$Embedded(
      userEntities:
          (json['userEntities'] as List<dynamic>?)
              ?.map(
                (e) =>
                    EntityModelUserEntity.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$PagedModelEntityModelUserEntity$EmbeddedToJson(
  PagedModelEntityModelUserEntity$Embedded instance,
) => <String, dynamic>{
  'userEntities': instance.userEntities?.map((e) => e.toJson()).toList(),
};

CollectionModelRoleEntity$Embedded _$CollectionModelRoleEntity$EmbeddedFromJson(
  Map<String, dynamic> json,
) => CollectionModelRoleEntity$Embedded(
  roleEntities:
      (json['roleEntities'] as List<dynamic>?)
          ?.map((e) => RoleEntityResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$CollectionModelRoleEntity$EmbeddedToJson(
  CollectionModelRoleEntity$Embedded instance,
) => <String, dynamic>{
  'roleEntities': instance.roleEntities?.map((e) => e.toJson()).toList(),
};

CollectionModelObject$Embedded _$CollectionModelObject$EmbeddedFromJson(
  Map<String, dynamic> json,
) => CollectionModelObject$Embedded(
  objects:
      (json['objects'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
);

Map<String, dynamic> _$CollectionModelObject$EmbeddedToJson(
  CollectionModelObject$Embedded instance,
) => <String, dynamic>{'objects': instance.objects};

PagedModelEntityModelParamsTimeTable$Embedded
_$PagedModelEntityModelParamsTimeTable$EmbeddedFromJson(
  Map<String, dynamic> json,
) => PagedModelEntityModelParamsTimeTable$Embedded(
  paramsTimeTables:
      (json['paramsTimeTables'] as List<dynamic>?)
          ?.map(
            (e) =>
                EntityModelParamsTimeTable.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$PagedModelEntityModelParamsTimeTable$EmbeddedToJson(
  PagedModelEntityModelParamsTimeTable$Embedded instance,
) => <String, dynamic>{
  'paramsTimeTables': instance.paramsTimeTables
      ?.map((e) => e.toJson())
      .toList(),
};

PagedModelEntityModelRoleEntity$Embedded
_$PagedModelEntityModelRoleEntity$EmbeddedFromJson(Map<String, dynamic> json) =>
    PagedModelEntityModelRoleEntity$Embedded(
      roleEntities:
          (json['roleEntities'] as List<dynamic>?)
              ?.map(
                (e) =>
                    EntityModelRoleEntity.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$PagedModelEntityModelRoleEntity$EmbeddedToJson(
  PagedModelEntityModelRoleEntity$Embedded instance,
) => <String, dynamic>{
  'roleEntities': instance.roleEntities?.map((e) => e.toJson()).toList(),
};

CollectionModelEntityModelRoleEntity$Embedded
_$CollectionModelEntityModelRoleEntity$EmbeddedFromJson(
  Map<String, dynamic> json,
) => CollectionModelEntityModelRoleEntity$Embedded(
  roleEntities:
      (json['roleEntities'] as List<dynamic>?)
          ?.map(
            (e) => EntityModelRoleEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$CollectionModelEntityModelRoleEntity$EmbeddedToJson(
  CollectionModelEntityModelRoleEntity$Embedded instance,
) => <String, dynamic>{
  'roleEntities': instance.roleEntities?.map((e) => e.toJson()).toList(),
};
