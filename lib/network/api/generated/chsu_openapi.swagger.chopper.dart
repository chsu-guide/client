// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'chsu_openapi.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ChsuOpenapi extends ChsuOpenapi {
  _$ChsuOpenapi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ChsuOpenapi;

  @override
  Future<Response<PagedModelEntityModelNotificationEntity>>
  _notificationEntitiesGet({
    int? page,
    int? size,
    List<String>? sort,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-notificationentity',
      summary: '',
      operationId: 'getCollectionResource-notificationentity-get_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["notification-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/notificationEntities');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      PagedModelEntityModelNotificationEntity,
      PagedModelEntityModelNotificationEntity
    >($request);
  }

  @override
  Future<Response<EntityModelNotificationEntity>> _notificationEntitiesPost({
    required NotificationEntityRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'create-notificationentity',
      summary: '',
      operationId: 'postCollectionResource-notificationentity-post',
      consumes: [],
      produces: [],
      security: [],
      tags: ["notification-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/notificationEntities');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<EntityModelNotificationEntity, EntityModelNotificationEntity>(
          $request,
        );
  }

  @override
  Future<Response<CollectionModelEntityModelNotificationEntity>>
  _notificationEntitiesSearchFindAllSendNotificationByKeysGet({
    String? type,
    List<String>? keyObjects,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'executeSearch-notificationentity-get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["notification-entity-search-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/notificationEntities/search/findAllSendNotificationByKeys',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'type': type,
      'keyObjects': keyObjects,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      CollectionModelEntityModelNotificationEntity,
      CollectionModelEntityModelNotificationEntity
    >($request);
  }

  @override
  Future<Response<EntityModelNotificationEntity>> _notificationEntitiesIdGet({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-notificationentity',
      summary: '',
      operationId: 'getItemResource-notificationentity-get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["notification-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/notificationEntities/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<EntityModelNotificationEntity, EntityModelNotificationEntity>(
          $request,
        );
  }

  @override
  Future<Response<EntityModelNotificationEntity>> _notificationEntitiesIdPut({
    required String id,
    required NotificationEntityRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'update-notificationentity',
      summary: '',
      operationId: 'putItemResource-notificationentity-put',
      consumes: [],
      produces: [],
      security: [],
      tags: ["notification-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/notificationEntities/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<EntityModelNotificationEntity, EntityModelNotificationEntity>(
          $request,
        );
  }

  @override
  Future<Response<dynamic>> _notificationEntitiesIdDelete({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'delete-notificationentity',
      summary: '',
      operationId: 'deleteItemResource-notificationentity-delete',
      consumes: [],
      produces: [],
      security: [],
      tags: ["notification-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/notificationEntities/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<EntityModelNotificationEntity>> _notificationEntitiesIdPatch({
    required String id,
    required NotificationEntityRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'patch-notificationentity',
      summary: '',
      operationId: 'patchItemResource-notificationentity-patch',
      consumes: [],
      produces: [],
      security: [],
      tags: ["notification-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/notificationEntities/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<EntityModelNotificationEntity, EntityModelNotificationEntity>(
          $request,
        );
  }

  @override
  Future<Response<PagedModelEntityModelParamsTimeTable>> _paramsTimeTablesGet({
    int? page,
    int? size,
    List<String>? sort,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-paramstimetable',
      summary: '',
      operationId: 'getCollectionResource-paramstimetable-get_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["params-time-table-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/paramsTimeTables');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      PagedModelEntityModelParamsTimeTable,
      PagedModelEntityModelParamsTimeTable
    >($request);
  }

  @override
  Future<Response<EntityModelParamsTimeTable>> _paramsTimeTablesPost({
    required ParamsTimeTableRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'create-paramstimetable',
      summary: '',
      operationId: 'postCollectionResource-paramstimetable-post',
      consumes: [],
      produces: [],
      security: [],
      tags: ["params-time-table-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/paramsTimeTables');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelParamsTimeTable, EntityModelParamsTimeTable>(
      $request,
    );
  }

  @override
  Future<Response<EntityModelParamsTimeTable>>
  _paramsTimeTablesSearchFindByParamTypeGet({
    String? paramType,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'executeSearch-paramstimetable-get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["params-time-table-search-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/paramsTimeTables/search/findByParamType');
    final Map<String, dynamic> $params = <String, dynamic>{
      'paramType': paramType,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelParamsTimeTable, EntityModelParamsTimeTable>(
      $request,
    );
  }

  @override
  Future<Response<EntityModelParamsTimeTable>> _paramsTimeTablesIdGet({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-paramstimetable',
      summary: '',
      operationId: 'getItemResource-paramstimetable-get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["params-time-table-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/paramsTimeTables/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelParamsTimeTable, EntityModelParamsTimeTable>(
      $request,
    );
  }

  @override
  Future<Response<EntityModelParamsTimeTable>> _paramsTimeTablesIdPut({
    required String id,
    required ParamsTimeTableRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'update-paramstimetable',
      summary: '',
      operationId: 'putItemResource-paramstimetable-put',
      consumes: [],
      produces: [],
      security: [],
      tags: ["params-time-table-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/paramsTimeTables/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelParamsTimeTable, EntityModelParamsTimeTable>(
      $request,
    );
  }

  @override
  Future<Response<dynamic>> _paramsTimeTablesIdDelete({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'delete-paramstimetable',
      summary: '',
      operationId: 'deleteItemResource-paramstimetable-delete',
      consumes: [],
      produces: [],
      security: [],
      tags: ["params-time-table-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/paramsTimeTables/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<EntityModelParamsTimeTable>> _paramsTimeTablesIdPatch({
    required String id,
    required ParamsTimeTableRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'patch-paramstimetable',
      summary: '',
      operationId: 'patchItemResource-paramstimetable-patch',
      consumes: [],
      produces: [],
      security: [],
      tags: ["params-time-table-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/paramsTimeTables/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelParamsTimeTable, EntityModelParamsTimeTable>(
      $request,
    );
  }

  @override
  Future<Response<RepresentationModelObject>> _profileGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'listAllFormsOfMetadata_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["profile-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/profile');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<RepresentationModelObject, RepresentationModelObject>(
      $request,
    );
  }

  @override
  Future<Response<String>> _profileNotificationEntitiesGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'descriptor_1_1_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["profile-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/profile/notificationEntities');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _profileParamsTimeTablesGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'descriptor_1_1_2',
      consumes: [],
      produces: [],
      security: [],
      tags: ["profile-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/profile/paramsTimeTables');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _profileRoleEntitiesGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'descriptor_1_1_3',
      consumes: [],
      produces: [],
      security: [],
      tags: ["profile-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/profile/roleEntities');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _profileUserEntitiesGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'descriptor_1_1_4',
      consumes: [],
      produces: [],
      security: [],
      tags: ["profile-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/profile/userEntities');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PagedModelEntityModelRoleEntity>> _roleEntitiesGet({
    int? page,
    int? size,
    List<String>? sort,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-roleentity',
      summary: '',
      operationId: 'getCollectionResource-roleentity-get_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client
        .send<PagedModelEntityModelRoleEntity, PagedModelEntityModelRoleEntity>(
          $request,
        );
  }

  @override
  Future<Response<EntityModelRoleEntity>> _roleEntitiesPost({
    required RoleEntityRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'create-roleentity',
      summary: '',
      operationId: 'postCollectionResource-roleentity-post',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelRoleEntity, EntityModelRoleEntity>($request);
  }

  @override
  Future<Response<CollectionModelEntityModelRoleEntity>>
  _roleEntitiesSearchFindAllByNameRoleGet({
    List<String>? roles,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'executeSearch-roleentity-get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-search-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities/search/findAllByNameRole');
    final Map<String, dynamic> $params = <String, dynamic>{'roles': roles};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      CollectionModelEntityModelRoleEntity,
      CollectionModelEntityModelRoleEntity
    >($request);
  }

  @override
  Future<Response<EntityModelRoleEntity>> _roleEntitiesIdGet({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-roleentity',
      summary: '',
      operationId: 'getItemResource-roleentity-get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelRoleEntity, EntityModelRoleEntity>($request);
  }

  @override
  Future<Response<EntityModelRoleEntity>> _roleEntitiesIdPut({
    required String id,
    required RoleEntityRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'update-roleentity',
      summary: '',
      operationId: 'putItemResource-roleentity-put',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelRoleEntity, EntityModelRoleEntity>($request);
  }

  @override
  Future<Response<dynamic>> _roleEntitiesIdDelete({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'delete-roleentity',
      summary: '',
      operationId: 'deleteItemResource-roleentity-delete',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<EntityModelRoleEntity>> _roleEntitiesIdPatch({
    required String id,
    required RoleEntityRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'patch-roleentity',
      summary: '',
      operationId: 'patchItemResource-roleentity-patch',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelRoleEntity, EntityModelRoleEntity>($request);
  }

  @override
  Future<Response<CollectionModelRoleEntity>> _roleEntitiesIdRolesGet({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-roleentity-by-roleentity-Id',
      summary: '',
      operationId: 'followPropertyReference-roleentity-get_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities/${id}/roles');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<CollectionModelRoleEntity, CollectionModelRoleEntity>(
      $request,
    );
  }

  @override
  Future<Response<CollectionModelRoleEntity>> _roleEntitiesIdRolesPut({
    required String id,
    required CollectionModelObject? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'update-roleentity-by-roleentity-Id',
      summary: '',
      operationId: 'createPropertyReference-roleentity-put',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities/${id}/roles');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<CollectionModelRoleEntity, CollectionModelRoleEntity>(
      $request,
    );
  }

  @override
  Future<Response<dynamic>> _roleEntitiesIdRolesDelete({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'delete-roleentity-by-roleentity-Id',
      summary: '',
      operationId: 'deletePropertyReference-roleentity-delete',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities/${id}/roles');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<CollectionModelRoleEntity>> _roleEntitiesIdRolesPatch({
    required String id,
    required CollectionModelObject? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'patch-roleentity-by-roleentity-Id',
      summary: '',
      operationId: 'createPropertyReference-roleentity-patch',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities/${id}/roles');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<CollectionModelRoleEntity, CollectionModelRoleEntity>(
      $request,
    );
  }

  @override
  Future<Response<CollectionModelRoleEntity>>
  _roleEntitiesIdRolesPropertyIdGet({
    required String id,
    required String propertyId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-roleentity-by-roleentity-Id',
      summary: '',
      operationId: 'followPropertyReference-roleentity-get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities/${id}/roles/${propertyId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<CollectionModelRoleEntity, CollectionModelRoleEntity>(
      $request,
    );
  }

  @override
  Future<Response<dynamic>> _roleEntitiesIdRolesPropertyIdDelete({
    required String id,
    required String propertyId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'delete-roleentity-by-roleentity-Id',
      summary: '',
      operationId: 'deletePropertyReferenceId-roleentity-delete',
      consumes: [],
      produces: [],
      security: [],
      tags: ["role-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/roleEntities/${id}/roles/${propertyId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PagedModelEntityModelUserEntity>> _userEntitiesGet({
    int? page,
    int? size,
    List<String>? sort,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-userentity',
      summary: '',
      operationId: 'getCollectionResource-userentity-get_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client
        .send<PagedModelEntityModelUserEntity, PagedModelEntityModelUserEntity>(
          $request,
        );
  }

  @override
  Future<Response<EntityModelUserEntity>> _userEntitiesPost({
    required UserEntityRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'create-userentity',
      summary: '',
      operationId: 'postCollectionResource-userentity-post',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelUserEntity, EntityModelUserEntity>($request);
  }

  @override
  Future<Response<EntityModelUserEntity>> _userEntitiesSearchFindByUsernameGet({
    String? username,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'executeSearch-userentity-get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-search-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities/search/findByUsername');
    final Map<String, dynamic> $params = <String, dynamic>{
      'username': username,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelUserEntity, EntityModelUserEntity>($request);
  }

  @override
  Future<Response<EntityModelUserEntity>> _userEntitiesIdGet({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-userentity',
      summary: '',
      operationId: 'getItemResource-userentity-get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelUserEntity, EntityModelUserEntity>($request);
  }

  @override
  Future<Response<EntityModelUserEntity>> _userEntitiesIdPut({
    required String id,
    required UserEntityRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'update-userentity',
      summary: '',
      operationId: 'putItemResource-userentity-put',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelUserEntity, EntityModelUserEntity>($request);
  }

  @override
  Future<Response<dynamic>> _userEntitiesIdDelete({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'delete-userentity',
      summary: '',
      operationId: 'deleteItemResource-userentity-delete',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<EntityModelUserEntity>> _userEntitiesIdPatch({
    required String id,
    required UserEntityRequestBody? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'patch-userentity',
      summary: '',
      operationId: 'patchItemResource-userentity-patch',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-entity-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<EntityModelUserEntity, EntityModelUserEntity>($request);
  }

  @override
  Future<Response<CollectionModelRoleEntity>> _userEntitiesIdRolesGet({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-roleentity-by-userentity-Id',
      summary: '',
      operationId: 'followPropertyReference-userentity-get_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities/${id}/roles');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<CollectionModelRoleEntity, CollectionModelRoleEntity>(
      $request,
    );
  }

  @override
  Future<Response<CollectionModelRoleEntity>> _userEntitiesIdRolesPut({
    required String id,
    required CollectionModelObject? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'update-roleentity-by-userentity-Id',
      summary: '',
      operationId: 'createPropertyReference-userentity-put',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities/${id}/roles');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<CollectionModelRoleEntity, CollectionModelRoleEntity>(
      $request,
    );
  }

  @override
  Future<Response<dynamic>> _userEntitiesIdRolesDelete({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'delete-roleentity-by-userentity-Id',
      summary: '',
      operationId: 'deletePropertyReference-userentity-delete',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities/${id}/roles');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<CollectionModelRoleEntity>> _userEntitiesIdRolesPatch({
    required String id,
    required CollectionModelObject? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'patch-roleentity-by-userentity-Id',
      summary: '',
      operationId: 'createPropertyReference-userentity-patch',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities/${id}/roles');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<CollectionModelRoleEntity, CollectionModelRoleEntity>(
      $request,
    );
  }

  @override
  Future<Response<CollectionModelRoleEntity>>
  _userEntitiesIdRolesPropertyIdGet({
    required String id,
    required String propertyId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'get-roleentity-by-userentity-Id',
      summary: '',
      operationId: 'followPropertyReference-userentity-get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities/${id}/roles/${propertyId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<CollectionModelRoleEntity, CollectionModelRoleEntity>(
      $request,
    );
  }

  @override
  Future<Response<dynamic>> _userEntitiesIdRolesPropertyIdDelete({
    required String id,
    required String propertyId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'delete-roleentity-by-userentity-Id',
      summary: '',
      operationId: 'deletePropertyReferenceId-userentity-delete',
      consumes: [],
      produces: [],
      security: [],
      tags: ["user-entity-property-reference-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/userEntities/${id}/roles/${propertyId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PageModelUserModel>> _apiUsersV1Get({
    required Pageable pageable,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Получает список пользователей',
      summary: 'Список пользователей',
      operationId: 'list',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Users"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/users/v1/');
    final Map<String, dynamic> $params = <String, dynamic>{
      'pageable': pageable,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<PageModelUserModel, PageModelUserModel>($request);
  }

  @override
  Future<Response<dynamic>> _apiUsersV1Put({
    required UserModel? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Модификация пользователя в системе',
      summary: 'Модификация пользователя в системе',
      operationId: 'update',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Users"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/users/v1/');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<int>> _apiUsersV1Post({
    required UserModel? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Создает пользователя в системе',
      summary: 'Создание пользователя в системе',
      operationId: 'create',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Users"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/users/v1/');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<PageModelRoleModel>> _apiRolesV1Get({
    required Pageable pageable,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Получает список ролей пользователей',
      summary: 'Список ролей пользователей',
      operationId: 'list_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Roles"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/roles/v1/');
    final Map<String, dynamic> $params = <String, dynamic>{
      'pageable': pageable,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<PageModelRoleModel, PageModelRoleModel>($request);
  }

  @override
  Future<Response<dynamic>> _apiRolesV1Put({
    required RoleModel? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Изменение роли пользователя',
      operationId: 'update_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Roles"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/roles/v1/');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiRolesV1Post({
    required RoleModel? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Создание роли пользователя',
      operationId: 'create_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Roles"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/roles/v1/');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<ParamsTimeTableModel>>> _apiParamsTimeTableV1Get({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'listParams',
      consumes: [],
      produces: [],
      security: [],
      tags: ["params-time-table"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/params-time-table/v1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<ParamsTimeTableModel>, ParamsTimeTableModel>(
      $request,
    );
  }

  @override
  Future<Response<dynamic>> _apiParamsTimeTableV1Post({
    required List<ParamsTimeTableModel>? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'saveListParams',
      consumes: [],
      produces: [],
      security: [],
      tags: ["params-time-table"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/params-time-table/v1');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<bool>> _apiAuthValidPost({
    required String? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Токен имеет срок действия. Метод проверяет валидность токена по сроку действия',
      summary: 'Проверка валидации токена',
      operationId: 'validToken',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/auth/valid');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<DataModelString>> _apiAuthSigninPost({
    required AuthenticationRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Проверяет авторизационные данные в системе. Если авторизация пройдена, выдается токен. Токен нужно будет вставить в заголовок в каждом запросе: "Authorization: Bearer ПолученныйТокен"',
      summary: 'Авторизация в системе',
      operationId: 'signin',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Auth"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/auth/signin');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<DataModelString, DataModelString>($request);
  }

  @override
  Future<Response<UserModel>> _apiUsersV1IdGet({
    required int id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Получает пользователя по его идентификатору',
      summary: 'Получение пользователя по ID',
      operationId: 'user',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Users"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/users/v1/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<UserModel, UserModel>($request);
  }

  @override
  Future<Response<int>> _apiTimetableV1NumweekDateGet({
    required String date,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Получает номер учебной недели по дате',
      summary: 'Номер учебной недели по дате',
      operationId: 'getNumWeek',
      consumes: [],
      produces: [],
      security: [],
      tags: ["TimeTable"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/timetable/v1/numweek/${date}/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<List<TimeTableModel>>>
  _apiTimetableV1FromStartDtToEndDtLecturerIdLecturerIdGet({
    required String startDt,
    required String endDt,
    required int lecturerId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Учебное расписание за период по предователю',
      summary: 'Учебное расписание по предователю',
      operationId: 'getTimeTableListByLecturer',
      consumes: [],
      produces: [],
      security: [],
      tags: ["TimeTable"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/timetable/v1/from/${startDt}/to/${endDt}/lecturerId/${lecturerId}',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<TimeTableModel>, TimeTableModel>($request);
  }

  @override
  Future<Response<List<TimeTableModel>>>
  _apiTimetableV1FromStartDtToEndDtGroupIdGroupIdGet({
    required String startDt,
    required String endDt,
    required int groupId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Учебное расписание за период по группе',
      summary: 'Учебное расписание по группе',
      operationId: 'getTimeTableListByStudentGroup',
      consumes: [],
      produces: [],
      security: [],
      tags: ["TimeTable"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/timetable/v1/from/${startDt}/to/${endDt}/groupId/${groupId}',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<TimeTableModel>, TimeTableModel>($request);
  }

  @override
  Future<Response<List<TimeTableModel>>>
  _apiTimetableV1FromStartDtToEndDtBuildBuildIdGet({
    required String startDt,
    required String endDt,
    required int buildId,
    required String auditory,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Учебное расписание за период по корпусу и аудитории',
      summary: 'Учебное расписание по корпусу и аудитории',
      operationId: 'getTimeTableListByAuditory',
      consumes: [],
      produces: [],
      security: [],
      tags: ["TimeTable"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/timetable/v1/from/${startDt}/to/${endDt}/build/${buildId}',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'auditory': auditory,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<List<TimeTableModel>, TimeTableModel>($request);
  }

  @override
  Future<Response<List<TimeTableModel>>>
  _apiTimetableV1EventFromStartDtToEndDtGet({
    required String startDt,
    required String endDt,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Ученое расписание',
      summary: 'Ученое расписание',
      operationId: 'getTimeTableEvent',
      consumes: [],
      produces: [],
      security: [],
      tags: ["TimeTable"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/timetable/v1/event/from/${startDt}/to/${endDt}',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<TimeTableModel>, TimeTableModel>($request);
  }

  @override
  Future<Response<List<TeacherModel>>> _apiTeacherV1Get({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'getTeacherList',
      consumes: [],
      produces: [],
      security: [],
      tags: ["rest-teacher-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/teacher/v1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<TeacherModel>, TeacherModel>($request);
  }

  @override
  Future<Response<SkillModel>> _apiSkillV1UsernameGet({
    required String username,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'getSkillListByStudent',
      consumes: [],
      produces: [],
      security: [],
      tags: ["rest-skill-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/skill/v1/${username}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<SkillModel, SkillModel>($request);
  }

  @override
  Future<Response<RoleModel>> _apiRolesV1NameGet({
    required String name,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Получение роли по ключу',
      operationId: 'role',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Roles"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/roles/v1/${name}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<RoleModel, RoleModel>($request);
  }

  @override
  Future<Response<PageModelPersonModel>> _apiPersonV1Get({
    required Pageable pageable,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Возвращает список персон активных и не активных',
      summary: 'Возвращает список персон',
      operationId: 'getPersons',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Person"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/person/v1');
    final Map<String, dynamic> $params = <String, dynamic>{
      'pageable': pageable,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<PageModelPersonModel, PageModelPersonModel>($request);
  }

  @override
  Future<Response<List<StudentModel>>>
  _apiPersonV1StudentGroupStudentGroupIdGet({
    required int studentGroupId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Возвращает список активных стедентов, обучающихся в группе',
      summary: 'Возвращает список стедентов, обучающихся в группе',
      operationId: 'getStudentListByStudentGroup',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Person"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/api/person/v1/student/group/${studentGroupId}',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<StudentModel>, StudentModel>($request);
  }

  @override
  Future<Response<List<EmployeeModel>>> _apiPersonV1EmployeeActiveGet({
    String? fio,
    int? postId,
    int? departmentId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Возвращает список активных сотрудников, в том числе и по часовиков',
      summary: 'Возвращает список активных сотрудников',
      operationId: 'getEmployeeList',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Person"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/person/v1/employee/active');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fio': fio,
      'postId': postId,
      'departmentId': departmentId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<List<EmployeeModel>, EmployeeModel>($request);
  }

  @override
  Future<Response<List<MarkModel>>> _apiMarkV1UsernameGet({
    required String username,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'getMarkListByStudent',
      consumes: [],
      produces: [],
      security: [],
      tags: ["rest-mark-controller"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/mark/v1/${username}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<MarkModel>, MarkModel>($request);
  }

  @override
  Future<Response<List<StudentGroupExtModel>>> _apiGroupV2Get({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Список групп (расширенный)',
      summary: 'Список групп (расширенный)',
      operationId: 'getStudentGroupExtList',
      consumes: [],
      produces: [],
      security: [],
      tags: ["StudentGroup"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/group/v2');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<StudentGroupExtModel>, StudentGroupExtModel>(
      $request,
    );
  }

  @override
  Future<Response<List<StudentGroupModel>>> _apiGroupV1Get({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Получает список групп',
      summary: 'Список групп',
      operationId: 'getStudentGroupList',
      consumes: [],
      produces: [],
      security: [],
      tags: ["StudentGroup"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/group/v1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<StudentGroupModel>, StudentGroupModel>($request);
  }

  @override
  Future<Response<List<BaseModel>>> _apiDisciplineV1Get({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Получает список зданий',
      summary: 'Список дисциплин',
      operationId: 'getTeacherList_1',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Discipline"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/discipline/v1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<BaseModel>, BaseModel>($request);
  }

  @override
  Future<Response<TreeModelDepartmentModel>> _apiDepartmentV2Get({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '',
      operationId: 'getDepartmentsTree',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Department"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/department/v2');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<TreeModelDepartmentModel, TreeModelDepartmentModel>(
      $request,
    );
  }

  @override
  Future<Response<List<DepartmentModel>>> _apiDepartmentV1Get({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Получает список отделов и кафедр',
      summary: 'Список отделов и кафедр',
      operationId: 'getDepartmentsList',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Department"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/department/v1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<DepartmentModel>, DepartmentModel>($request);
  }

  @override
  Future<Response<List<BaseModel>>> _apiBuildingV1Get({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Получает список зданий',
      summary: 'Список зданий',
      operationId: 'getTeacherList_2',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Building"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/building/v1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<BaseModel>, BaseModel>($request);
  }

  @override
  Future<Response<List<SemesterModel>>> _apiBaseV1SemestersGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Возвращает список семестров',
      summary: 'Список семестров',
      operationId: 'getSemesterList',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Dictionary"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/base/v1/semesters');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<SemesterModel>, SemesterModel>($request);
  }

  @override
  Future<Response<List<AuditoriumModel>>> _apiAuditoriumV1Get({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Получает список аудиторий',
      summary: 'Список аудиторий',
      operationId: 'getTeacherList_3',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Auditorium"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/auditorium/v1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<List<AuditoriumModel>, AuditoriumModel>($request);
  }
}
