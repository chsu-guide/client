// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element_parameter

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'chsu_openapi.enums.swagger.dart' as enums;
import 'chsu_openapi.metadata.swagger.dart';
export 'chsu_openapi.enums.swagger.dart';

part 'chsu_openapi.swagger.chopper.dart';
part 'chsu_openapi.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class ChsuOpenapi extends ChopperService {
  static ChsuOpenapi create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$ChsuOpenapi(client);
    }

    final newClient = ChopperClient(
      services: [_$ChsuOpenapi()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http://'),
    );
    return _$ChsuOpenapi(newClient);
  }

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  Future<chopper.Response<PagedModelEntityModelNotificationEntity>>
  notificationEntitiesGet({int? page, int? size, List<String>? sort}) {
    generatedMapping.putIfAbsent(
      PagedModelEntityModelNotificationEntity,
      () => PagedModelEntityModelNotificationEntity.fromJsonFactory,
    );

    return _notificationEntitiesGet(page: page, size: size, sort: sort);
  }

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  @GET(path: '/notificationEntities')
  Future<chopper.Response<PagedModelEntityModelNotificationEntity>>
  _notificationEntitiesGet({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<EntityModelNotificationEntity>>
  notificationEntitiesPost({required NotificationEntityRequestBody? body}) {
    generatedMapping.putIfAbsent(
      EntityModelNotificationEntity,
      () => EntityModelNotificationEntity.fromJsonFactory,
    );

    return _notificationEntitiesPost(body: body);
  }

  ///
  @POST(path: '/notificationEntities', optionalBody: true)
  Future<chopper.Response<EntityModelNotificationEntity>>
  _notificationEntitiesPost({
    @Body() required NotificationEntityRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  ///@param type
  ///@param keyObjects
  Future<chopper.Response<CollectionModelEntityModelNotificationEntity>>
  notificationEntitiesSearchFindAllSendNotificationByKeysGet({
    enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType? type,
    List<String>? keyObjects,
  }) {
    generatedMapping.putIfAbsent(
      CollectionModelEntityModelNotificationEntity,
      () => CollectionModelEntityModelNotificationEntity.fromJsonFactory,
    );

    return _notificationEntitiesSearchFindAllSendNotificationByKeysGet(
      type: type?.value?.toString(),
      keyObjects: keyObjects,
    );
  }

  ///
  ///@param type
  ///@param keyObjects
  @GET(path: '/notificationEntities/search/findAllSendNotificationByKeys')
  Future<chopper.Response<CollectionModelEntityModelNotificationEntity>>
  _notificationEntitiesSearchFindAllSendNotificationByKeysGet({
    @Query('type') String? type,
    @Query('keyObjects') List<String>? keyObjects,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelNotificationEntity>>
  notificationEntitiesIdGet({required String id}) {
    generatedMapping.putIfAbsent(
      EntityModelNotificationEntity,
      () => EntityModelNotificationEntity.fromJsonFactory,
    );

    return _notificationEntitiesIdGet(id: id);
  }

  ///
  ///@param id
  @GET(path: '/notificationEntities/{id}')
  Future<chopper.Response<EntityModelNotificationEntity>>
  _notificationEntitiesIdGet({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelNotificationEntity>>
  notificationEntitiesIdPut({
    required String id,
    required NotificationEntityRequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelNotificationEntity,
      () => EntityModelNotificationEntity.fromJsonFactory,
    );

    return _notificationEntitiesIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @PUT(path: '/notificationEntities/{id}', optionalBody: true)
  Future<chopper.Response<EntityModelNotificationEntity>>
  _notificationEntitiesIdPut({
    @Path('id') required String id,
    @Body() required NotificationEntityRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response> notificationEntitiesIdDelete({required String id}) {
    return _notificationEntitiesIdDelete(id: id);
  }

  ///
  ///@param id
  @DELETE(path: '/notificationEntities/{id}')
  Future<chopper.Response> _notificationEntitiesIdDelete({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelNotificationEntity>>
  notificationEntitiesIdPatch({
    required String id,
    required NotificationEntityRequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelNotificationEntity,
      () => EntityModelNotificationEntity.fromJsonFactory,
    );

    return _notificationEntitiesIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  @PATCH(path: '/notificationEntities/{id}', optionalBody: true)
  Future<chopper.Response<EntityModelNotificationEntity>>
  _notificationEntitiesIdPatch({
    @Path('id') required String id,
    @Body() required NotificationEntityRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  Future<chopper.Response<PagedModelEntityModelParamsTimeTable>>
  paramsTimeTablesGet({int? page, int? size, List<String>? sort}) {
    generatedMapping.putIfAbsent(
      PagedModelEntityModelParamsTimeTable,
      () => PagedModelEntityModelParamsTimeTable.fromJsonFactory,
    );

    return _paramsTimeTablesGet(page: page, size: size, sort: sort);
  }

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  @GET(path: '/paramsTimeTables')
  Future<chopper.Response<PagedModelEntityModelParamsTimeTable>>
  _paramsTimeTablesGet({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<EntityModelParamsTimeTable>> paramsTimeTablesPost({
    required ParamsTimeTableRequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelParamsTimeTable,
      () => EntityModelParamsTimeTable.fromJsonFactory,
    );

    return _paramsTimeTablesPost(body: body);
  }

  ///
  @POST(path: '/paramsTimeTables', optionalBody: true)
  Future<chopper.Response<EntityModelParamsTimeTable>> _paramsTimeTablesPost({
    @Body() required ParamsTimeTableRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  ///@param paramType
  Future<chopper.Response<EntityModelParamsTimeTable>>
  paramsTimeTablesSearchFindByParamTypeGet({
    enums.ParamsTimeTablesSearchFindByParamTypeGetParamType? paramType,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelParamsTimeTable,
      () => EntityModelParamsTimeTable.fromJsonFactory,
    );

    return _paramsTimeTablesSearchFindByParamTypeGet(
      paramType: paramType?.value?.toString(),
    );
  }

  ///
  ///@param paramType
  @GET(path: '/paramsTimeTables/search/findByParamType')
  Future<chopper.Response<EntityModelParamsTimeTable>>
  _paramsTimeTablesSearchFindByParamTypeGet({
    @Query('paramType') String? paramType,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelParamsTimeTable>> paramsTimeTablesIdGet({
    required String id,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelParamsTimeTable,
      () => EntityModelParamsTimeTable.fromJsonFactory,
    );

    return _paramsTimeTablesIdGet(id: id);
  }

  ///
  ///@param id
  @GET(path: '/paramsTimeTables/{id}')
  Future<chopper.Response<EntityModelParamsTimeTable>> _paramsTimeTablesIdGet({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelParamsTimeTable>> paramsTimeTablesIdPut({
    required String id,
    required ParamsTimeTableRequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelParamsTimeTable,
      () => EntityModelParamsTimeTable.fromJsonFactory,
    );

    return _paramsTimeTablesIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @PUT(path: '/paramsTimeTables/{id}', optionalBody: true)
  Future<chopper.Response<EntityModelParamsTimeTable>> _paramsTimeTablesIdPut({
    @Path('id') required String id,
    @Body() required ParamsTimeTableRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response> paramsTimeTablesIdDelete({required String id}) {
    return _paramsTimeTablesIdDelete(id: id);
  }

  ///
  ///@param id
  @DELETE(path: '/paramsTimeTables/{id}')
  Future<chopper.Response> _paramsTimeTablesIdDelete({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelParamsTimeTable>> paramsTimeTablesIdPatch({
    required String id,
    required ParamsTimeTableRequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelParamsTimeTable,
      () => EntityModelParamsTimeTable.fromJsonFactory,
    );

    return _paramsTimeTablesIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  @PATCH(path: '/paramsTimeTables/{id}', optionalBody: true)
  Future<chopper.Response<EntityModelParamsTimeTable>>
  _paramsTimeTablesIdPatch({
    @Path('id') required String id,
    @Body() required ParamsTimeTableRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<RepresentationModelObject>> profileGet() {
    generatedMapping.putIfAbsent(
      RepresentationModelObject,
      () => RepresentationModelObject.fromJsonFactory,
    );

    return _profileGet();
  }

  ///
  @GET(path: '/profile')
  Future<chopper.Response<RepresentationModelObject>> _profileGet({
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<String>> profileNotificationEntitiesGet() {
    return _profileNotificationEntitiesGet();
  }

  ///
  @GET(path: '/profile/notificationEntities')
  Future<chopper.Response<String>> _profileNotificationEntitiesGet({
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<String>> profileParamsTimeTablesGet() {
    return _profileParamsTimeTablesGet();
  }

  ///
  @GET(path: '/profile/paramsTimeTables')
  Future<chopper.Response<String>> _profileParamsTimeTablesGet({
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<String>> profileRoleEntitiesGet() {
    return _profileRoleEntitiesGet();
  }

  ///
  @GET(path: '/profile/roleEntities')
  Future<chopper.Response<String>> _profileRoleEntitiesGet({
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<String>> profileUserEntitiesGet() {
    return _profileUserEntitiesGet();
  }

  ///
  @GET(path: '/profile/userEntities')
  Future<chopper.Response<String>> _profileUserEntitiesGet({
    @chopper.Tag()
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
  });

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  Future<chopper.Response<PagedModelEntityModelRoleEntity>> roleEntitiesGet({
    int? page,
    int? size,
    List<String>? sort,
  }) {
    generatedMapping.putIfAbsent(
      PagedModelEntityModelRoleEntity,
      () => PagedModelEntityModelRoleEntity.fromJsonFactory,
    );

    return _roleEntitiesGet(page: page, size: size, sort: sort);
  }

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  @GET(path: '/roleEntities')
  Future<chopper.Response<PagedModelEntityModelRoleEntity>> _roleEntitiesGet({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<EntityModelRoleEntity>> roleEntitiesPost({
    required RoleEntityRequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelRoleEntity,
      () => EntityModelRoleEntity.fromJsonFactory,
    );

    return _roleEntitiesPost(body: body);
  }

  ///
  @POST(path: '/roleEntities', optionalBody: true)
  Future<chopper.Response<EntityModelRoleEntity>> _roleEntitiesPost({
    @Body() required RoleEntityRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  ///@param roles
  Future<chopper.Response<CollectionModelEntityModelRoleEntity>>
  roleEntitiesSearchFindAllByNameRoleGet({List<String>? roles}) {
    generatedMapping.putIfAbsent(
      CollectionModelEntityModelRoleEntity,
      () => CollectionModelEntityModelRoleEntity.fromJsonFactory,
    );

    return _roleEntitiesSearchFindAllByNameRoleGet(roles: roles);
  }

  ///
  ///@param roles
  @GET(path: '/roleEntities/search/findAllByNameRole')
  Future<chopper.Response<CollectionModelEntityModelRoleEntity>>
  _roleEntitiesSearchFindAllByNameRoleGet({
    @Query('roles') List<String>? roles,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelRoleEntity>> roleEntitiesIdGet({
    required String id,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelRoleEntity,
      () => EntityModelRoleEntity.fromJsonFactory,
    );

    return _roleEntitiesIdGet(id: id);
  }

  ///
  ///@param id
  @GET(path: '/roleEntities/{id}')
  Future<chopper.Response<EntityModelRoleEntity>> _roleEntitiesIdGet({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelRoleEntity>> roleEntitiesIdPut({
    required String id,
    required RoleEntityRequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelRoleEntity,
      () => EntityModelRoleEntity.fromJsonFactory,
    );

    return _roleEntitiesIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @PUT(path: '/roleEntities/{id}', optionalBody: true)
  Future<chopper.Response<EntityModelRoleEntity>> _roleEntitiesIdPut({
    @Path('id') required String id,
    @Body() required RoleEntityRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response> roleEntitiesIdDelete({required String id}) {
    return _roleEntitiesIdDelete(id: id);
  }

  ///
  ///@param id
  @DELETE(path: '/roleEntities/{id}')
  Future<chopper.Response> _roleEntitiesIdDelete({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelRoleEntity>> roleEntitiesIdPatch({
    required String id,
    required RoleEntityRequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelRoleEntity,
      () => EntityModelRoleEntity.fromJsonFactory,
    );

    return _roleEntitiesIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  @PATCH(path: '/roleEntities/{id}', optionalBody: true)
  Future<chopper.Response<EntityModelRoleEntity>> _roleEntitiesIdPatch({
    @Path('id') required String id,
    @Body() required RoleEntityRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<CollectionModelRoleEntity>> roleEntitiesIdRolesGet({
    required String id,
  }) {
    generatedMapping.putIfAbsent(
      CollectionModelRoleEntity,
      () => CollectionModelRoleEntity.fromJsonFactory,
    );

    return _roleEntitiesIdRolesGet(id: id);
  }

  ///
  ///@param id
  @GET(path: '/roleEntities/{id}/roles')
  Future<chopper.Response<CollectionModelRoleEntity>> _roleEntitiesIdRolesGet({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<CollectionModelRoleEntity>> roleEntitiesIdRolesPut({
    required String id,
    required CollectionModelObject? body,
  }) {
    generatedMapping.putIfAbsent(
      CollectionModelRoleEntity,
      () => CollectionModelRoleEntity.fromJsonFactory,
    );

    return _roleEntitiesIdRolesPut(id: id, body: body);
  }

  ///
  ///@param id
  @PUT(path: '/roleEntities/{id}/roles', optionalBody: true)
  Future<chopper.Response<CollectionModelRoleEntity>> _roleEntitiesIdRolesPut({
    @Path('id') required String id,
    @Body() required CollectionModelObject? body,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response> roleEntitiesIdRolesDelete({required String id}) {
    return _roleEntitiesIdRolesDelete(id: id);
  }

  ///
  ///@param id
  @DELETE(path: '/roleEntities/{id}/roles')
  Future<chopper.Response> _roleEntitiesIdRolesDelete({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<CollectionModelRoleEntity>> roleEntitiesIdRolesPatch({
    required String id,
    required CollectionModelObject? body,
  }) {
    generatedMapping.putIfAbsent(
      CollectionModelRoleEntity,
      () => CollectionModelRoleEntity.fromJsonFactory,
    );

    return _roleEntitiesIdRolesPatch(id: id, body: body);
  }

  ///
  ///@param id
  @PATCH(path: '/roleEntities/{id}/roles', optionalBody: true)
  Future<chopper.Response<CollectionModelRoleEntity>>
  _roleEntitiesIdRolesPatch({
    @Path('id') required String id,
    @Body() required CollectionModelObject? body,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  ///@param propertyId
  Future<chopper.Response<CollectionModelRoleEntity>>
  roleEntitiesIdRolesPropertyIdGet({
    required String id,
    required String propertyId,
  }) {
    generatedMapping.putIfAbsent(
      CollectionModelRoleEntity,
      () => CollectionModelRoleEntity.fromJsonFactory,
    );

    return _roleEntitiesIdRolesPropertyIdGet(id: id, propertyId: propertyId);
  }

  ///
  ///@param id
  ///@param propertyId
  @GET(path: '/roleEntities/{id}/roles/{propertyId}')
  Future<chopper.Response<CollectionModelRoleEntity>>
  _roleEntitiesIdRolesPropertyIdGet({
    @Path('id') required String id,
    @Path('propertyId') required String propertyId,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  ///@param propertyId
  Future<chopper.Response> roleEntitiesIdRolesPropertyIdDelete({
    required String id,
    required String propertyId,
  }) {
    return _roleEntitiesIdRolesPropertyIdDelete(id: id, propertyId: propertyId);
  }

  ///
  ///@param id
  ///@param propertyId
  @DELETE(path: '/roleEntities/{id}/roles/{propertyId}')
  Future<chopper.Response> _roleEntitiesIdRolesPropertyIdDelete({
    @Path('id') required String id,
    @Path('propertyId') required String propertyId,
    @chopper.Tag()
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
  });

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  Future<chopper.Response<PagedModelEntityModelUserEntity>> userEntitiesGet({
    int? page,
    int? size,
    List<String>? sort,
  }) {
    generatedMapping.putIfAbsent(
      PagedModelEntityModelUserEntity,
      () => PagedModelEntityModelUserEntity.fromJsonFactory,
    );

    return _userEntitiesGet(page: page, size: size, sort: sort);
  }

  ///
  ///@param page Zero-based page index (0..N)
  ///@param size The size of the page to be returned
  ///@param sort Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  @GET(path: '/userEntities')
  Future<chopper.Response<PagedModelEntityModelUserEntity>> _userEntitiesGet({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('sort') List<String>? sort,
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<EntityModelUserEntity>> userEntitiesPost({
    required UserEntityRequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelUserEntity,
      () => EntityModelUserEntity.fromJsonFactory,
    );

    return _userEntitiesPost(body: body);
  }

  ///
  @POST(path: '/userEntities', optionalBody: true)
  Future<chopper.Response<EntityModelUserEntity>> _userEntitiesPost({
    @Body() required UserEntityRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  ///@param username
  Future<chopper.Response<EntityModelUserEntity>>
  userEntitiesSearchFindByUsernameGet({String? username}) {
    generatedMapping.putIfAbsent(
      EntityModelUserEntity,
      () => EntityModelUserEntity.fromJsonFactory,
    );

    return _userEntitiesSearchFindByUsernameGet(username: username);
  }

  ///
  ///@param username
  @GET(path: '/userEntities/search/findByUsername')
  Future<chopper.Response<EntityModelUserEntity>>
  _userEntitiesSearchFindByUsernameGet({
    @Query('username') String? username,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelUserEntity>> userEntitiesIdGet({
    required String id,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelUserEntity,
      () => EntityModelUserEntity.fromJsonFactory,
    );

    return _userEntitiesIdGet(id: id);
  }

  ///
  ///@param id
  @GET(path: '/userEntities/{id}')
  Future<chopper.Response<EntityModelUserEntity>> _userEntitiesIdGet({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelUserEntity>> userEntitiesIdPut({
    required String id,
    required UserEntityRequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelUserEntity,
      () => EntityModelUserEntity.fromJsonFactory,
    );

    return _userEntitiesIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @PUT(path: '/userEntities/{id}', optionalBody: true)
  Future<chopper.Response<EntityModelUserEntity>> _userEntitiesIdPut({
    @Path('id') required String id,
    @Body() required UserEntityRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response> userEntitiesIdDelete({required String id}) {
    return _userEntitiesIdDelete(id: id);
  }

  ///
  ///@param id
  @DELETE(path: '/userEntities/{id}')
  Future<chopper.Response> _userEntitiesIdDelete({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<EntityModelUserEntity>> userEntitiesIdPatch({
    required String id,
    required UserEntityRequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      EntityModelUserEntity,
      () => EntityModelUserEntity.fromJsonFactory,
    );

    return _userEntitiesIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  @PATCH(path: '/userEntities/{id}', optionalBody: true)
  Future<chopper.Response<EntityModelUserEntity>> _userEntitiesIdPatch({
    @Path('id') required String id,
    @Body() required UserEntityRequestBody? body,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<CollectionModelRoleEntity>> userEntitiesIdRolesGet({
    required String id,
  }) {
    generatedMapping.putIfAbsent(
      CollectionModelRoleEntity,
      () => CollectionModelRoleEntity.fromJsonFactory,
    );

    return _userEntitiesIdRolesGet(id: id);
  }

  ///
  ///@param id
  @GET(path: '/userEntities/{id}/roles')
  Future<chopper.Response<CollectionModelRoleEntity>> _userEntitiesIdRolesGet({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<CollectionModelRoleEntity>> userEntitiesIdRolesPut({
    required String id,
    required CollectionModelObject? body,
  }) {
    generatedMapping.putIfAbsent(
      CollectionModelRoleEntity,
      () => CollectionModelRoleEntity.fromJsonFactory,
    );

    return _userEntitiesIdRolesPut(id: id, body: body);
  }

  ///
  ///@param id
  @PUT(path: '/userEntities/{id}/roles', optionalBody: true)
  Future<chopper.Response<CollectionModelRoleEntity>> _userEntitiesIdRolesPut({
    @Path('id') required String id,
    @Body() required CollectionModelObject? body,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response> userEntitiesIdRolesDelete({required String id}) {
    return _userEntitiesIdRolesDelete(id: id);
  }

  ///
  ///@param id
  @DELETE(path: '/userEntities/{id}/roles')
  Future<chopper.Response> _userEntitiesIdRolesDelete({
    @Path('id') required String id,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  Future<chopper.Response<CollectionModelRoleEntity>> userEntitiesIdRolesPatch({
    required String id,
    required CollectionModelObject? body,
  }) {
    generatedMapping.putIfAbsent(
      CollectionModelRoleEntity,
      () => CollectionModelRoleEntity.fromJsonFactory,
    );

    return _userEntitiesIdRolesPatch(id: id, body: body);
  }

  ///
  ///@param id
  @PATCH(path: '/userEntities/{id}/roles', optionalBody: true)
  Future<chopper.Response<CollectionModelRoleEntity>>
  _userEntitiesIdRolesPatch({
    @Path('id') required String id,
    @Body() required CollectionModelObject? body,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  ///@param propertyId
  Future<chopper.Response<CollectionModelRoleEntity>>
  userEntitiesIdRolesPropertyIdGet({
    required String id,
    required String propertyId,
  }) {
    generatedMapping.putIfAbsent(
      CollectionModelRoleEntity,
      () => CollectionModelRoleEntity.fromJsonFactory,
    );

    return _userEntitiesIdRolesPropertyIdGet(id: id, propertyId: propertyId);
  }

  ///
  ///@param id
  ///@param propertyId
  @GET(path: '/userEntities/{id}/roles/{propertyId}')
  Future<chopper.Response<CollectionModelRoleEntity>>
  _userEntitiesIdRolesPropertyIdGet({
    @Path('id') required String id,
    @Path('propertyId') required String propertyId,
    @chopper.Tag()
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
  });

  ///
  ///@param id
  ///@param propertyId
  Future<chopper.Response> userEntitiesIdRolesPropertyIdDelete({
    required String id,
    required String propertyId,
  }) {
    return _userEntitiesIdRolesPropertyIdDelete(id: id, propertyId: propertyId);
  }

  ///
  ///@param id
  ///@param propertyId
  @DELETE(path: '/userEntities/{id}/roles/{propertyId}')
  Future<chopper.Response> _userEntitiesIdRolesPropertyIdDelete({
    @Path('id') required String id,
    @Path('propertyId') required String propertyId,
    @chopper.Tag()
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
  });

  ///Список пользователей
  ///@param pageable
  Future<chopper.Response<PageModelUserModel>> apiUsersV1Get({
    required Pageable pageable,
  }) {
    generatedMapping.putIfAbsent(Pageable, () => Pageable.fromJsonFactory);
    generatedMapping.putIfAbsent(
      PageModelUserModel,
      () => PageModelUserModel.fromJsonFactory,
    );

    return _apiUsersV1Get(pageable: pageable);
  }

  ///Список пользователей
  ///@param pageable
  @GET(path: '/api/users/v1/')
  Future<chopper.Response<PageModelUserModel>> _apiUsersV1Get({
    @Query('pageable') required Pageable pageable,
    @chopper.Tag()
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
  });

  ///Модификация пользователя в системе
  Future<chopper.Response> apiUsersV1Put({required UserModel? body}) {
    return _apiUsersV1Put(body: body);
  }

  ///Модификация пользователя в системе
  @PUT(path: '/api/users/v1/', optionalBody: true)
  Future<chopper.Response> _apiUsersV1Put({
    @Body() required UserModel? body,
    @chopper.Tag()
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
  });

  ///Создание пользователя в системе
  Future<chopper.Response<int>> apiUsersV1Post({required UserModel? body}) {
    return _apiUsersV1Post(body: body);
  }

  ///Создание пользователя в системе
  @POST(path: '/api/users/v1/', optionalBody: true)
  Future<chopper.Response<int>> _apiUsersV1Post({
    @Body() required UserModel? body,
    @chopper.Tag()
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
  });

  ///Список ролей пользователей
  ///@param pageable
  Future<chopper.Response<PageModelRoleModel>> apiRolesV1Get({
    required Pageable pageable,
  }) {
    generatedMapping.putIfAbsent(Pageable, () => Pageable.fromJsonFactory);
    generatedMapping.putIfAbsent(
      PageModelRoleModel,
      () => PageModelRoleModel.fromJsonFactory,
    );

    return _apiRolesV1Get(pageable: pageable);
  }

  ///Список ролей пользователей
  ///@param pageable
  @GET(path: '/api/roles/v1/')
  Future<chopper.Response<PageModelRoleModel>> _apiRolesV1Get({
    @Query('pageable') required Pageable pageable,
    @chopper.Tag()
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
  });

  ///Изменение роли пользователя
  Future<chopper.Response> apiRolesV1Put({required RoleModel? body}) {
    return _apiRolesV1Put(body: body);
  }

  ///Изменение роли пользователя
  @PUT(path: '/api/roles/v1/', optionalBody: true)
  Future<chopper.Response> _apiRolesV1Put({
    @Body() required RoleModel? body,
    @chopper.Tag()
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
  });

  ///Создание роли пользователя
  Future<chopper.Response> apiRolesV1Post({required RoleModel? body}) {
    return _apiRolesV1Post(body: body);
  }

  ///Создание роли пользователя
  @POST(path: '/api/roles/v1/', optionalBody: true)
  Future<chopper.Response> _apiRolesV1Post({
    @Body() required RoleModel? body,
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<List<ParamsTimeTableModel>>>
  apiParamsTimeTableV1Get() {
    generatedMapping.putIfAbsent(
      ParamsTimeTableModel,
      () => ParamsTimeTableModel.fromJsonFactory,
    );

    return _apiParamsTimeTableV1Get();
  }

  ///
  @GET(path: '/api/params-time-table/v1')
  Future<chopper.Response<List<ParamsTimeTableModel>>>
  _apiParamsTimeTableV1Get({
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response> apiParamsTimeTableV1Post({
    required List<ParamsTimeTableModel>? body,
  }) {
    return _apiParamsTimeTableV1Post(body: body);
  }

  ///
  @POST(path: '/api/params-time-table/v1', optionalBody: true)
  Future<chopper.Response> _apiParamsTimeTableV1Post({
    @Body() required List<ParamsTimeTableModel>? body,
    @chopper.Tag()
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
  });

  ///Проверка валидации токена
  Future<chopper.Response<bool>> apiAuthValidPost({required String? body}) {
    return _apiAuthValidPost(body: body);
  }

  ///Проверка валидации токена
  @POST(path: '/api/auth/valid', optionalBody: true)
  Future<chopper.Response<bool>> _apiAuthValidPost({
    @Body() required String? body,
    @chopper.Tag()
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
  });

  ///Авторизация в системе
  Future<chopper.Response<DataModelString>> apiAuthSigninPost({
    required AuthenticationRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      DataModelString,
      () => DataModelString.fromJsonFactory,
    );

    return _apiAuthSigninPost(body: body);
  }

  ///Авторизация в системе
  @POST(path: '/api/auth/signin', optionalBody: true)
  Future<chopper.Response<DataModelString>> _apiAuthSigninPost({
    @Body() required AuthenticationRequest? body,
    @chopper.Tag()
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
  });

  ///Получение пользователя по ID
  ///@param id
  Future<chopper.Response<UserModel>> apiUsersV1IdGet({required int id}) {
    generatedMapping.putIfAbsent(UserModel, () => UserModel.fromJsonFactory);

    return _apiUsersV1IdGet(id: id);
  }

  ///Получение пользователя по ID
  ///@param id
  @GET(path: '/api/users/v1/{id}')
  Future<chopper.Response<UserModel>> _apiUsersV1IdGet({
    @Path('id') required int id,
    @chopper.Tag()
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
  });

  ///Номер учебной недели по дате
  ///@param date
  Future<chopper.Response<int>> apiTimetableV1NumweekDateGet({
    required String date,
  }) {
    return _apiTimetableV1NumweekDateGet(date: date);
  }

  ///Номер учебной недели по дате
  ///@param date
  @GET(path: '/api/timetable/v1/numweek/{date}/')
  Future<chopper.Response<int>> _apiTimetableV1NumweekDateGet({
    @Path('date') required String date,
    @chopper.Tag()
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
  });

  ///Учебное расписание по предователю
  ///@param startDt
  ///@param endDt
  ///@param lecturerId
  Future<chopper.Response<List<TimeTableModel>>>
  apiTimetableV1FromStartDtToEndDtLecturerIdLecturerIdGet({
    required String startDt,
    required String endDt,
    required int lecturerId,
  }) {
    generatedMapping.putIfAbsent(
      TimeTableModel,
      () => TimeTableModel.fromJsonFactory,
    );

    return _apiTimetableV1FromStartDtToEndDtLecturerIdLecturerIdGet(
      startDt: startDt,
      endDt: endDt,
      lecturerId: lecturerId,
    );
  }

  ///Учебное расписание по предователю
  ///@param startDt
  ///@param endDt
  ///@param lecturerId
  @GET(
    path: '/api/timetable/v1/from/{startDt}/to/{endDt}/lecturerId/{lecturerId}',
  )
  Future<chopper.Response<List<TimeTableModel>>>
  _apiTimetableV1FromStartDtToEndDtLecturerIdLecturerIdGet({
    @Path('startDt') required String startDt,
    @Path('endDt') required String endDt,
    @Path('lecturerId') required int lecturerId,
    @chopper.Tag()
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
  });

  ///Учебное расписание по группе
  ///@param startDt
  ///@param endDt
  ///@param groupId
  Future<chopper.Response<List<TimeTableModel>>>
  apiTimetableV1FromStartDtToEndDtGroupIdGroupIdGet({
    required String startDt,
    required String endDt,
    required int groupId,
  }) {
    generatedMapping.putIfAbsent(
      TimeTableModel,
      () => TimeTableModel.fromJsonFactory,
    );

    return _apiTimetableV1FromStartDtToEndDtGroupIdGroupIdGet(
      startDt: startDt,
      endDt: endDt,
      groupId: groupId,
    );
  }

  ///Учебное расписание по группе
  ///@param startDt
  ///@param endDt
  ///@param groupId
  @GET(path: '/api/timetable/v1/from/{startDt}/to/{endDt}/groupId/{groupId}')
  Future<chopper.Response<List<TimeTableModel>>>
  _apiTimetableV1FromStartDtToEndDtGroupIdGroupIdGet({
    @Path('startDt') required String startDt,
    @Path('endDt') required String endDt,
    @Path('groupId') required int groupId,
    @chopper.Tag()
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
  });

  ///Учебное расписание по корпусу и аудитории
  ///@param startDt
  ///@param endDt
  ///@param buildId
  ///@param auditory
  Future<chopper.Response<List<TimeTableModel>>>
  apiTimetableV1FromStartDtToEndDtBuildBuildIdGet({
    required String startDt,
    required String endDt,
    required int buildId,
    required String auditory,
  }) {
    generatedMapping.putIfAbsent(
      TimeTableModel,
      () => TimeTableModel.fromJsonFactory,
    );

    return _apiTimetableV1FromStartDtToEndDtBuildBuildIdGet(
      startDt: startDt,
      endDt: endDt,
      buildId: buildId,
      auditory: auditory,
    );
  }

  ///Учебное расписание по корпусу и аудитории
  ///@param startDt
  ///@param endDt
  ///@param buildId
  ///@param auditory
  @GET(path: '/api/timetable/v1/from/{startDt}/to/{endDt}/build/{buildId}')
  Future<chopper.Response<List<TimeTableModel>>>
  _apiTimetableV1FromStartDtToEndDtBuildBuildIdGet({
    @Path('startDt') required String startDt,
    @Path('endDt') required String endDt,
    @Path('buildId') required int buildId,
    @Query('auditory') required String auditory,
    @chopper.Tag()
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
  });

  ///Ученое расписание
  ///@param startDt
  ///@param endDt
  Future<chopper.Response<List<TimeTableModel>>>
  apiTimetableV1EventFromStartDtToEndDtGet({
    required String startDt,
    required String endDt,
  }) {
    generatedMapping.putIfAbsent(
      TimeTableModel,
      () => TimeTableModel.fromJsonFactory,
    );

    return _apiTimetableV1EventFromStartDtToEndDtGet(
      startDt: startDt,
      endDt: endDt,
    );
  }

  ///Ученое расписание
  ///@param startDt
  ///@param endDt
  @GET(path: '/api/timetable/v1/event/from/{startDt}/to/{endDt}')
  Future<chopper.Response<List<TimeTableModel>>>
  _apiTimetableV1EventFromStartDtToEndDtGet({
    @Path('startDt') required String startDt,
    @Path('endDt') required String endDt,
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<List<TeacherModel>>> apiTeacherV1Get() {
    generatedMapping.putIfAbsent(
      TeacherModel,
      () => TeacherModel.fromJsonFactory,
    );

    return _apiTeacherV1Get();
  }

  ///
  @GET(path: '/api/teacher/v1')
  Future<chopper.Response<List<TeacherModel>>> _apiTeacherV1Get({
    @chopper.Tag()
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
  });

  ///
  ///@param username
  Future<chopper.Response<SkillModel>> apiSkillV1UsernameGet({
    required String username,
  }) {
    generatedMapping.putIfAbsent(SkillModel, () => SkillModel.fromJsonFactory);

    return _apiSkillV1UsernameGet(username: username);
  }

  ///
  ///@param username
  @GET(path: '/api/skill/v1/{username}')
  Future<chopper.Response<SkillModel>> _apiSkillV1UsernameGet({
    @Path('username') required String username,
    @chopper.Tag()
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
  });

  ///Получение роли по ключу
  ///@param name
  Future<chopper.Response<RoleModel>> apiRolesV1NameGet({
    required String name,
  }) {
    generatedMapping.putIfAbsent(RoleModel, () => RoleModel.fromJsonFactory);

    return _apiRolesV1NameGet(name: name);
  }

  ///Получение роли по ключу
  ///@param name
  @GET(path: '/api/roles/v1/{name}')
  Future<chopper.Response<RoleModel>> _apiRolesV1NameGet({
    @Path('name') required String name,
    @chopper.Tag()
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
  });

  ///Возвращает список персон
  ///@param pageable
  Future<chopper.Response<PageModelPersonModel>> apiPersonV1Get({
    required Pageable pageable,
  }) {
    generatedMapping.putIfAbsent(Pageable, () => Pageable.fromJsonFactory);
    generatedMapping.putIfAbsent(
      PageModelPersonModel,
      () => PageModelPersonModel.fromJsonFactory,
    );

    return _apiPersonV1Get(pageable: pageable);
  }

  ///Возвращает список персон
  ///@param pageable
  @GET(path: '/api/person/v1')
  Future<chopper.Response<PageModelPersonModel>> _apiPersonV1Get({
    @Query('pageable') required Pageable pageable,
    @chopper.Tag()
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
  });

  ///Возвращает список стедентов, обучающихся в группе
  ///@param studentGroupId
  Future<chopper.Response<List<StudentModel>>>
  apiPersonV1StudentGroupStudentGroupIdGet({required int studentGroupId}) {
    generatedMapping.putIfAbsent(
      StudentModel,
      () => StudentModel.fromJsonFactory,
    );

    return _apiPersonV1StudentGroupStudentGroupIdGet(
      studentGroupId: studentGroupId,
    );
  }

  ///Возвращает список стедентов, обучающихся в группе
  ///@param studentGroupId
  @GET(path: '/api/person/v1/student/group/{studentGroupId}')
  Future<chopper.Response<List<StudentModel>>>
  _apiPersonV1StudentGroupStudentGroupIdGet({
    @Path('studentGroupId') required int studentGroupId,
    @chopper.Tag()
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
  });

  ///Возвращает список активных сотрудников
  ///@param fio
  ///@param postId
  ///@param departmentId
  Future<chopper.Response<List<EmployeeModel>>> apiPersonV1EmployeeActiveGet({
    String? fio,
    int? postId,
    int? departmentId,
  }) {
    generatedMapping.putIfAbsent(
      EmployeeModel,
      () => EmployeeModel.fromJsonFactory,
    );

    return _apiPersonV1EmployeeActiveGet(
      fio: fio,
      postId: postId,
      departmentId: departmentId,
    );
  }

  ///Возвращает список активных сотрудников
  ///@param fio
  ///@param postId
  ///@param departmentId
  @GET(path: '/api/person/v1/employee/active')
  Future<chopper.Response<List<EmployeeModel>>> _apiPersonV1EmployeeActiveGet({
    @Query('fio') String? fio,
    @Query('postId') int? postId,
    @Query('departmentId') int? departmentId,
    @chopper.Tag()
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
  });

  ///
  ///@param username
  Future<chopper.Response<List<MarkModel>>> apiMarkV1UsernameGet({
    required String username,
  }) {
    generatedMapping.putIfAbsent(MarkModel, () => MarkModel.fromJsonFactory);

    return _apiMarkV1UsernameGet(username: username);
  }

  ///
  ///@param username
  @GET(path: '/api/mark/v1/{username}')
  Future<chopper.Response<List<MarkModel>>> _apiMarkV1UsernameGet({
    @Path('username') required String username,
    @chopper.Tag()
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
  });

  ///Список групп (расширенный)
  Future<chopper.Response<List<StudentGroupExtModel>>> apiGroupV2Get() {
    generatedMapping.putIfAbsent(
      StudentGroupExtModel,
      () => StudentGroupExtModel.fromJsonFactory,
    );

    return _apiGroupV2Get();
  }

  ///Список групп (расширенный)
  @GET(path: '/api/group/v2')
  Future<chopper.Response<List<StudentGroupExtModel>>> _apiGroupV2Get({
    @chopper.Tag()
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
  });

  ///Список групп
  Future<chopper.Response<List<StudentGroupModel>>> apiGroupV1Get() {
    generatedMapping.putIfAbsent(
      StudentGroupModel,
      () => StudentGroupModel.fromJsonFactory,
    );

    return _apiGroupV1Get();
  }

  ///Список групп
  @GET(path: '/api/group/v1')
  Future<chopper.Response<List<StudentGroupModel>>> _apiGroupV1Get({
    @chopper.Tag()
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
  });

  ///Список дисциплин
  Future<chopper.Response<List<BaseModel>>> apiDisciplineV1Get() {
    generatedMapping.putIfAbsent(BaseModel, () => BaseModel.fromJsonFactory);

    return _apiDisciplineV1Get();
  }

  ///Список дисциплин
  @GET(path: '/api/discipline/v1')
  Future<chopper.Response<List<BaseModel>>> _apiDisciplineV1Get({
    @chopper.Tag()
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
  });

  ///
  Future<chopper.Response<TreeModelDepartmentModel>> apiDepartmentV2Get() {
    generatedMapping.putIfAbsent(
      TreeModelDepartmentModel,
      () => TreeModelDepartmentModel.fromJsonFactory,
    );

    return _apiDepartmentV2Get();
  }

  ///
  @GET(path: '/api/department/v2')
  Future<chopper.Response<TreeModelDepartmentModel>> _apiDepartmentV2Get({
    @chopper.Tag()
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
  });

  ///Список отделов и кафедр
  Future<chopper.Response<List<DepartmentModel>>> apiDepartmentV1Get() {
    generatedMapping.putIfAbsent(
      DepartmentModel,
      () => DepartmentModel.fromJsonFactory,
    );

    return _apiDepartmentV1Get();
  }

  ///Список отделов и кафедр
  @GET(path: '/api/department/v1')
  Future<chopper.Response<List<DepartmentModel>>> _apiDepartmentV1Get({
    @chopper.Tag()
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
  });

  ///Список зданий
  Future<chopper.Response<List<BaseModel>>> apiBuildingV1Get() {
    generatedMapping.putIfAbsent(BaseModel, () => BaseModel.fromJsonFactory);

    return _apiBuildingV1Get();
  }

  ///Список зданий
  @GET(path: '/api/building/v1')
  Future<chopper.Response<List<BaseModel>>> _apiBuildingV1Get({
    @chopper.Tag()
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
  });

  ///Список семестров
  Future<chopper.Response<List<SemesterModel>>> apiBaseV1SemestersGet() {
    generatedMapping.putIfAbsent(
      SemesterModel,
      () => SemesterModel.fromJsonFactory,
    );

    return _apiBaseV1SemestersGet();
  }

  ///Список семестров
  @GET(path: '/api/base/v1/semesters')
  Future<chopper.Response<List<SemesterModel>>> _apiBaseV1SemestersGet({
    @chopper.Tag()
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
  });

  ///Список аудиторий
  Future<chopper.Response<List<AuditoriumModel>>> apiAuditoriumV1Get() {
    generatedMapping.putIfAbsent(
      AuditoriumModel,
      () => AuditoriumModel.fromJsonFactory,
    );

    return _apiAuditoriumV1Get();
  }

  ///Список аудиторий
  @GET(path: '/api/auditorium/v1')
  Future<chopper.Response<List<AuditoriumModel>>> _apiAuditoriumV1Get({
    @chopper.Tag()
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
  });
}

@JsonSerializable(explicitToJson: true)
class AbstractJsonSchemaPropertyObject {
  const AbstractJsonSchemaPropertyObject({this.title, this.readOnly});

  factory AbstractJsonSchemaPropertyObject.fromJson(
    Map<String, dynamic> json,
  ) => _$AbstractJsonSchemaPropertyObjectFromJson(json);

  static const toJsonFactory = _$AbstractJsonSchemaPropertyObjectToJson;
  Map<String, dynamic> toJson() =>
      _$AbstractJsonSchemaPropertyObjectToJson(this);

  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'readOnly')
  final bool? readOnly;
  static const fromJsonFactory = _$AbstractJsonSchemaPropertyObjectFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AbstractJsonSchemaPropertyObject &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.readOnly, readOnly) ||
                const DeepCollectionEquality().equals(
                  other.readOnly,
                  readOnly,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(readOnly) ^
      runtimeType.hashCode;
}

extension $AbstractJsonSchemaPropertyObjectExtension
    on AbstractJsonSchemaPropertyObject {
  AbstractJsonSchemaPropertyObject copyWith({String? title, bool? readOnly}) {
    return AbstractJsonSchemaPropertyObject(
      title: title ?? this.title,
      readOnly: readOnly ?? this.readOnly,
    );
  }

  AbstractJsonSchemaPropertyObject copyWithWrapped({
    Wrapped<String?>? title,
    Wrapped<bool?>? readOnly,
  }) {
    return AbstractJsonSchemaPropertyObject(
      title: (title != null ? title.value : this.title),
      readOnly: (readOnly != null ? readOnly.value : this.readOnly),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Item {
  const Item({this.type, this.properties, this.requiredProperties});

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  static const toJsonFactory = _$ItemToJson;
  Map<String, dynamic> toJson() => _$ItemToJson(this);

  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'properties')
  final Map<String, dynamic>? properties;
  @JsonKey(name: 'requiredProperties', defaultValue: <String>[])
  final List<String>? requiredProperties;
  static const fromJsonFactory = _$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Item &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality().equals(
                  other.properties,
                  properties,
                )) &&
            (identical(other.requiredProperties, requiredProperties) ||
                const DeepCollectionEquality().equals(
                  other.requiredProperties,
                  requiredProperties,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(requiredProperties) ^
      runtimeType.hashCode;
}

extension $ItemExtension on Item {
  Item copyWith({
    String? type,
    Map<String, dynamic>? properties,
    List<String>? requiredProperties,
  }) {
    return Item(
      type: type ?? this.type,
      properties: properties ?? this.properties,
      requiredProperties: requiredProperties ?? this.requiredProperties,
    );
  }

  Item copyWithWrapped({
    Wrapped<String?>? type,
    Wrapped<Map<String, dynamic>?>? properties,
    Wrapped<List<String>?>? requiredProperties,
  }) {
    return Item(
      type: (type != null ? type.value : this.type),
      properties: (properties != null ? properties.value : this.properties),
      requiredProperties: (requiredProperties != null
          ? requiredProperties.value
          : this.requiredProperties),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class JsonSchema {
  const JsonSchema({
    this.title,
    this.description,
    this.properties,
    this.requiredProperties,
    this.definitions,
    this.type,
    this.$schema,
  });

  factory JsonSchema.fromJson(Map<String, dynamic> json) =>
      _$JsonSchemaFromJson(json);

  static const toJsonFactory = _$JsonSchemaToJson;
  Map<String, dynamic> toJson() => _$JsonSchemaToJson(this);

  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'properties')
  final Map<String, dynamic>? properties;
  @JsonKey(name: 'requiredProperties', defaultValue: <String>[])
  final List<String>? requiredProperties;
  @JsonKey(name: 'definitions')
  final Map<String, dynamic>? definitions;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: '\$schema')
  final String? $schema;
  static const fromJsonFactory = _$JsonSchemaFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is JsonSchema &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality().equals(
                  other.properties,
                  properties,
                )) &&
            (identical(other.requiredProperties, requiredProperties) ||
                const DeepCollectionEquality().equals(
                  other.requiredProperties,
                  requiredProperties,
                )) &&
            (identical(other.definitions, definitions) ||
                const DeepCollectionEquality().equals(
                  other.definitions,
                  definitions,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.$schema, $schema) ||
                const DeepCollectionEquality().equals(other.$schema, $schema)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(requiredProperties) ^
      const DeepCollectionEquality().hash(definitions) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash($schema) ^
      runtimeType.hashCode;
}

extension $JsonSchemaExtension on JsonSchema {
  JsonSchema copyWith({
    String? title,
    String? description,
    Map<String, dynamic>? properties,
    List<String>? requiredProperties,
    Map<String, dynamic>? definitions,
    String? type,
    String? $schema,
  }) {
    return JsonSchema(
      title: title ?? this.title,
      description: description ?? this.description,
      properties: properties ?? this.properties,
      requiredProperties: requiredProperties ?? this.requiredProperties,
      definitions: definitions ?? this.definitions,
      type: type ?? this.type,
      $schema: $schema ?? this.$schema,
    );
  }

  JsonSchema copyWithWrapped({
    Wrapped<String?>? title,
    Wrapped<String?>? description,
    Wrapped<Map<String, dynamic>?>? properties,
    Wrapped<List<String>?>? requiredProperties,
    Wrapped<Map<String, dynamic>?>? definitions,
    Wrapped<String?>? type,
    Wrapped<String?>? $schema,
  }) {
    return JsonSchema(
      title: (title != null ? title.value : this.title),
      description: (description != null ? description.value : this.description),
      properties: (properties != null ? properties.value : this.properties),
      requiredProperties: (requiredProperties != null
          ? requiredProperties.value
          : this.requiredProperties),
      definitions: (definitions != null ? definitions.value : this.definitions),
      type: (type != null ? type.value : this.type),
      $schema: ($schema != null ? $schema.value : this.$schema),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Links {
  const Links();

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  static const toJsonFactory = _$LinksToJson;
  Map<String, dynamic> toJson() => _$LinksToJson(this);

  static const fromJsonFactory = _$LinksFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class RepresentationModelObject {
  const RepresentationModelObject({this.links});

  factory RepresentationModelObject.fromJson(Map<String, dynamic> json) =>
      _$RepresentationModelObjectFromJson(json);

  static const toJsonFactory = _$RepresentationModelObjectToJson;
  Map<String, dynamic> toJson() => _$RepresentationModelObjectToJson(this);

  @JsonKey(name: '_links')
  final Links? links;
  static const fromJsonFactory = _$RepresentationModelObjectFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RepresentationModelObject &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(links) ^ runtimeType.hashCode;
}

extension $RepresentationModelObjectExtension on RepresentationModelObject {
  RepresentationModelObject copyWith({Links? links}) {
    return RepresentationModelObject(links: links ?? this.links);
  }

  RepresentationModelObject copyWithWrapped({Wrapped<Links?>? links}) {
    return RepresentationModelObject(
      links: (links != null ? links.value : this.links),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EntityModelNotificationEntity {
  const EntityModelNotificationEntity({
    this.type,
    this.keyObject,
    this.textBody,
    this.createdDate,
    this.links,
  });

  factory EntityModelNotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$EntityModelNotificationEntityFromJson(json);

  static const toJsonFactory = _$EntityModelNotificationEntityToJson;
  Map<String, dynamic> toJson() => _$EntityModelNotificationEntityToJson(this);

  @JsonKey(
    name: 'type',
    toJson: entityModelNotificationEntityTypeNullableToJson,
    fromJson: entityModelNotificationEntityTypeNullableFromJson,
  )
  final enums.EntityModelNotificationEntityType? type;
  @JsonKey(name: 'keyObject')
  final String? keyObject;
  @JsonKey(name: 'textBody')
  final String? textBody;
  @JsonKey(name: 'createdDate', toJson: _dateToJson)
  final DateTime? createdDate;
  @JsonKey(name: '_links')
  final Links? links;
  static const fromJsonFactory = _$EntityModelNotificationEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EntityModelNotificationEntity &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.keyObject, keyObject) ||
                const DeepCollectionEquality().equals(
                  other.keyObject,
                  keyObject,
                )) &&
            (identical(other.textBody, textBody) ||
                const DeepCollectionEquality().equals(
                  other.textBody,
                  textBody,
                )) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality().equals(
                  other.createdDate,
                  createdDate,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(keyObject) ^
      const DeepCollectionEquality().hash(textBody) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(links) ^
      runtimeType.hashCode;
}

extension $EntityModelNotificationEntityExtension
    on EntityModelNotificationEntity {
  EntityModelNotificationEntity copyWith({
    enums.EntityModelNotificationEntityType? type,
    String? keyObject,
    String? textBody,
    DateTime? createdDate,
    Links? links,
  }) {
    return EntityModelNotificationEntity(
      type: type ?? this.type,
      keyObject: keyObject ?? this.keyObject,
      textBody: textBody ?? this.textBody,
      createdDate: createdDate ?? this.createdDate,
      links: links ?? this.links,
    );
  }

  EntityModelNotificationEntity copyWithWrapped({
    Wrapped<enums.EntityModelNotificationEntityType?>? type,
    Wrapped<String?>? keyObject,
    Wrapped<String?>? textBody,
    Wrapped<DateTime?>? createdDate,
    Wrapped<Links?>? links,
  }) {
    return EntityModelNotificationEntity(
      type: (type != null ? type.value : this.type),
      keyObject: (keyObject != null ? keyObject.value : this.keyObject),
      textBody: (textBody != null ? textBody.value : this.textBody),
      createdDate: (createdDate != null ? createdDate.value : this.createdDate),
      links: (links != null ? links.value : this.links),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PageMetadata {
  const PageMetadata({
    this.size,
    this.totalElements,
    this.totalPages,
    this.number,
  });

  factory PageMetadata.fromJson(Map<String, dynamic> json) =>
      _$PageMetadataFromJson(json);

  static const toJsonFactory = _$PageMetadataToJson;
  Map<String, dynamic> toJson() => _$PageMetadataToJson(this);

  @JsonKey(name: 'size')
  final int? size;
  @JsonKey(name: 'totalElements')
  final int? totalElements;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'number')
  final int? number;
  static const fromJsonFactory = _$PageMetadataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageMetadata &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.totalElements, totalElements) ||
                const DeepCollectionEquality().equals(
                  other.totalElements,
                  totalElements,
                )) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality().equals(
                  other.totalPages,
                  totalPages,
                )) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(totalElements) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(number) ^
      runtimeType.hashCode;
}

extension $PageMetadataExtension on PageMetadata {
  PageMetadata copyWith({
    int? size,
    int? totalElements,
    int? totalPages,
    int? number,
  }) {
    return PageMetadata(
      size: size ?? this.size,
      totalElements: totalElements ?? this.totalElements,
      totalPages: totalPages ?? this.totalPages,
      number: number ?? this.number,
    );
  }

  PageMetadata copyWithWrapped({
    Wrapped<int?>? size,
    Wrapped<int?>? totalElements,
    Wrapped<int?>? totalPages,
    Wrapped<int?>? number,
  }) {
    return PageMetadata(
      size: (size != null ? size.value : this.size),
      totalElements: (totalElements != null
          ? totalElements.value
          : this.totalElements),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      number: (number != null ? number.value : this.number),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PagedModelEntityModelNotificationEntity {
  const PagedModelEntityModelNotificationEntity({
    this.embedded,
    this.links,
    this.page,
  });

  factory PagedModelEntityModelNotificationEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$PagedModelEntityModelNotificationEntityFromJson(json);

  static const toJsonFactory = _$PagedModelEntityModelNotificationEntityToJson;
  Map<String, dynamic> toJson() =>
      _$PagedModelEntityModelNotificationEntityToJson(this);

  @JsonKey(name: '_embedded')
  final PagedModelEntityModelNotificationEntity$Embedded? embedded;
  @JsonKey(name: '_links')
  final Links? links;
  @JsonKey(name: 'page')
  final PageMetadata? page;
  static const fromJsonFactory =
      _$PagedModelEntityModelNotificationEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PagedModelEntityModelNotificationEntity &&
            (identical(other.embedded, embedded) ||
                const DeepCollectionEquality().equals(
                  other.embedded,
                  embedded,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(embedded) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(page) ^
      runtimeType.hashCode;
}

extension $PagedModelEntityModelNotificationEntityExtension
    on PagedModelEntityModelNotificationEntity {
  PagedModelEntityModelNotificationEntity copyWith({
    PagedModelEntityModelNotificationEntity$Embedded? embedded,
    Links? links,
    PageMetadata? page,
  }) {
    return PagedModelEntityModelNotificationEntity(
      embedded: embedded ?? this.embedded,
      links: links ?? this.links,
      page: page ?? this.page,
    );
  }

  PagedModelEntityModelNotificationEntity copyWithWrapped({
    Wrapped<PagedModelEntityModelNotificationEntity$Embedded?>? embedded,
    Wrapped<Links?>? links,
    Wrapped<PageMetadata?>? page,
  }) {
    return PagedModelEntityModelNotificationEntity(
      embedded: (embedded != null ? embedded.value : this.embedded),
      links: (links != null ? links.value : this.links),
      page: (page != null ? page.value : this.page),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CollectionModelEntityModelNotificationEntity {
  const CollectionModelEntityModelNotificationEntity({
    this.embedded,
    this.links,
  });

  factory CollectionModelEntityModelNotificationEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$CollectionModelEntityModelNotificationEntityFromJson(json);

  static const toJsonFactory =
      _$CollectionModelEntityModelNotificationEntityToJson;
  Map<String, dynamic> toJson() =>
      _$CollectionModelEntityModelNotificationEntityToJson(this);

  @JsonKey(name: '_embedded')
  final CollectionModelEntityModelNotificationEntity$Embedded? embedded;
  @JsonKey(name: '_links')
  final Links? links;
  static const fromJsonFactory =
      _$CollectionModelEntityModelNotificationEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CollectionModelEntityModelNotificationEntity &&
            (identical(other.embedded, embedded) ||
                const DeepCollectionEquality().equals(
                  other.embedded,
                  embedded,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(embedded) ^
      const DeepCollectionEquality().hash(links) ^
      runtimeType.hashCode;
}

extension $CollectionModelEntityModelNotificationEntityExtension
    on CollectionModelEntityModelNotificationEntity {
  CollectionModelEntityModelNotificationEntity copyWith({
    CollectionModelEntityModelNotificationEntity$Embedded? embedded,
    Links? links,
  }) {
    return CollectionModelEntityModelNotificationEntity(
      embedded: embedded ?? this.embedded,
      links: links ?? this.links,
    );
  }

  CollectionModelEntityModelNotificationEntity copyWithWrapped({
    Wrapped<CollectionModelEntityModelNotificationEntity$Embedded?>? embedded,
    Wrapped<Links?>? links,
  }) {
    return CollectionModelEntityModelNotificationEntity(
      embedded: (embedded != null ? embedded.value : this.embedded),
      links: (links != null ? links.value : this.links),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EntityModelUserEntity {
  const EntityModelUserEntity({
    this.username,
    this.password,
    this.active,
    this.ldapAuth,
    this.created,
    this.changed,
    this.links,
  });

  factory EntityModelUserEntity.fromJson(Map<String, dynamic> json) =>
      _$EntityModelUserEntityFromJson(json);

  static const toJsonFactory = _$EntityModelUserEntityToJson;
  Map<String, dynamic> toJson() => _$EntityModelUserEntityToJson(this);

  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'ldapAuth')
  final bool? ldapAuth;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'changed')
  final DateTime? changed;
  @JsonKey(name: '_links')
  final Links? links;
  static const fromJsonFactory = _$EntityModelUserEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EntityModelUserEntity &&
            (identical(other.username, username) ||
                const DeepCollectionEquality().equals(
                  other.username,
                  username,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.ldapAuth, ldapAuth) ||
                const DeepCollectionEquality().equals(
                  other.ldapAuth,
                  ldapAuth,
                )) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(
                  other.created,
                  created,
                )) &&
            (identical(other.changed, changed) ||
                const DeepCollectionEquality().equals(
                  other.changed,
                  changed,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(ldapAuth) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(changed) ^
      const DeepCollectionEquality().hash(links) ^
      runtimeType.hashCode;
}

extension $EntityModelUserEntityExtension on EntityModelUserEntity {
  EntityModelUserEntity copyWith({
    String? username,
    String? password,
    bool? active,
    bool? ldapAuth,
    DateTime? created,
    DateTime? changed,
    Links? links,
  }) {
    return EntityModelUserEntity(
      username: username ?? this.username,
      password: password ?? this.password,
      active: active ?? this.active,
      ldapAuth: ldapAuth ?? this.ldapAuth,
      created: created ?? this.created,
      changed: changed ?? this.changed,
      links: links ?? this.links,
    );
  }

  EntityModelUserEntity copyWithWrapped({
    Wrapped<String?>? username,
    Wrapped<String?>? password,
    Wrapped<bool?>? active,
    Wrapped<bool?>? ldapAuth,
    Wrapped<DateTime?>? created,
    Wrapped<DateTime?>? changed,
    Wrapped<Links?>? links,
  }) {
    return EntityModelUserEntity(
      username: (username != null ? username.value : this.username),
      password: (password != null ? password.value : this.password),
      active: (active != null ? active.value : this.active),
      ldapAuth: (ldapAuth != null ? ldapAuth.value : this.ldapAuth),
      created: (created != null ? created.value : this.created),
      changed: (changed != null ? changed.value : this.changed),
      links: (links != null ? links.value : this.links),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PagedModelEntityModelUserEntity {
  const PagedModelEntityModelUserEntity({this.embedded, this.links, this.page});

  factory PagedModelEntityModelUserEntity.fromJson(Map<String, dynamic> json) =>
      _$PagedModelEntityModelUserEntityFromJson(json);

  static const toJsonFactory = _$PagedModelEntityModelUserEntityToJson;
  Map<String, dynamic> toJson() =>
      _$PagedModelEntityModelUserEntityToJson(this);

  @JsonKey(name: '_embedded')
  final PagedModelEntityModelUserEntity$Embedded? embedded;
  @JsonKey(name: '_links')
  final Links? links;
  @JsonKey(name: 'page')
  final PageMetadata? page;
  static const fromJsonFactory = _$PagedModelEntityModelUserEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PagedModelEntityModelUserEntity &&
            (identical(other.embedded, embedded) ||
                const DeepCollectionEquality().equals(
                  other.embedded,
                  embedded,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(embedded) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(page) ^
      runtimeType.hashCode;
}

extension $PagedModelEntityModelUserEntityExtension
    on PagedModelEntityModelUserEntity {
  PagedModelEntityModelUserEntity copyWith({
    PagedModelEntityModelUserEntity$Embedded? embedded,
    Links? links,
    PageMetadata? page,
  }) {
    return PagedModelEntityModelUserEntity(
      embedded: embedded ?? this.embedded,
      links: links ?? this.links,
      page: page ?? this.page,
    );
  }

  PagedModelEntityModelUserEntity copyWithWrapped({
    Wrapped<PagedModelEntityModelUserEntity$Embedded?>? embedded,
    Wrapped<Links?>? links,
    Wrapped<PageMetadata?>? page,
  }) {
    return PagedModelEntityModelUserEntity(
      embedded: (embedded != null ? embedded.value : this.embedded),
      links: (links != null ? links.value : this.links),
      page: (page != null ? page.value : this.page),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CollectionModelRoleEntity {
  const CollectionModelRoleEntity({this.embedded, this.links});

  factory CollectionModelRoleEntity.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelRoleEntityFromJson(json);

  static const toJsonFactory = _$CollectionModelRoleEntityToJson;
  Map<String, dynamic> toJson() => _$CollectionModelRoleEntityToJson(this);

  @JsonKey(name: '_embedded')
  final CollectionModelRoleEntity$Embedded? embedded;
  @JsonKey(name: '_links')
  final Links? links;
  static const fromJsonFactory = _$CollectionModelRoleEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CollectionModelRoleEntity &&
            (identical(other.embedded, embedded) ||
                const DeepCollectionEquality().equals(
                  other.embedded,
                  embedded,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(embedded) ^
      const DeepCollectionEquality().hash(links) ^
      runtimeType.hashCode;
}

extension $CollectionModelRoleEntityExtension on CollectionModelRoleEntity {
  CollectionModelRoleEntity copyWith({
    CollectionModelRoleEntity$Embedded? embedded,
    Links? links,
  }) {
    return CollectionModelRoleEntity(
      embedded: embedded ?? this.embedded,
      links: links ?? this.links,
    );
  }

  CollectionModelRoleEntity copyWithWrapped({
    Wrapped<CollectionModelRoleEntity$Embedded?>? embedded,
    Wrapped<Links?>? links,
  }) {
    return CollectionModelRoleEntity(
      embedded: (embedded != null ? embedded.value : this.embedded),
      links: (links != null ? links.value : this.links),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CollectionModelObject {
  const CollectionModelObject({this.embedded, this.links});

  factory CollectionModelObject.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelObjectFromJson(json);

  static const toJsonFactory = _$CollectionModelObjectToJson;
  Map<String, dynamic> toJson() => _$CollectionModelObjectToJson(this);

  @JsonKey(name: '_embedded')
  final CollectionModelObject$Embedded? embedded;
  @JsonKey(name: '_links')
  final Links? links;
  static const fromJsonFactory = _$CollectionModelObjectFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CollectionModelObject &&
            (identical(other.embedded, embedded) ||
                const DeepCollectionEquality().equals(
                  other.embedded,
                  embedded,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(embedded) ^
      const DeepCollectionEquality().hash(links) ^
      runtimeType.hashCode;
}

extension $CollectionModelObjectExtension on CollectionModelObject {
  CollectionModelObject copyWith({
    CollectionModelObject$Embedded? embedded,
    Links? links,
  }) {
    return CollectionModelObject(
      embedded: embedded ?? this.embedded,
      links: links ?? this.links,
    );
  }

  CollectionModelObject copyWithWrapped({
    Wrapped<CollectionModelObject$Embedded?>? embedded,
    Wrapped<Links?>? links,
  }) {
    return CollectionModelObject(
      embedded: (embedded != null ? embedded.value : this.embedded),
      links: (links != null ? links.value : this.links),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EntityModelParamsTimeTable {
  const EntityModelParamsTimeTable({this.value, this.updateDate, this.links});

  factory EntityModelParamsTimeTable.fromJson(Map<String, dynamic> json) =>
      _$EntityModelParamsTimeTableFromJson(json);

  static const toJsonFactory = _$EntityModelParamsTimeTableToJson;
  Map<String, dynamic> toJson() => _$EntityModelParamsTimeTableToJson(this);

  @JsonKey(name: 'value')
  final String? value;
  @JsonKey(name: 'updateDate')
  final DateTime? updateDate;
  @JsonKey(name: '_links')
  final Links? links;
  static const fromJsonFactory = _$EntityModelParamsTimeTableFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EntityModelParamsTimeTable &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.updateDate, updateDate) ||
                const DeepCollectionEquality().equals(
                  other.updateDate,
                  updateDate,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(updateDate) ^
      const DeepCollectionEquality().hash(links) ^
      runtimeType.hashCode;
}

extension $EntityModelParamsTimeTableExtension on EntityModelParamsTimeTable {
  EntityModelParamsTimeTable copyWith({
    String? value,
    DateTime? updateDate,
    Links? links,
  }) {
    return EntityModelParamsTimeTable(
      value: value ?? this.value,
      updateDate: updateDate ?? this.updateDate,
      links: links ?? this.links,
    );
  }

  EntityModelParamsTimeTable copyWithWrapped({
    Wrapped<String?>? value,
    Wrapped<DateTime?>? updateDate,
    Wrapped<Links?>? links,
  }) {
    return EntityModelParamsTimeTable(
      value: (value != null ? value.value : this.value),
      updateDate: (updateDate != null ? updateDate.value : this.updateDate),
      links: (links != null ? links.value : this.links),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PagedModelEntityModelParamsTimeTable {
  const PagedModelEntityModelParamsTimeTable({
    this.embedded,
    this.links,
    this.page,
  });

  factory PagedModelEntityModelParamsTimeTable.fromJson(
    Map<String, dynamic> json,
  ) => _$PagedModelEntityModelParamsTimeTableFromJson(json);

  static const toJsonFactory = _$PagedModelEntityModelParamsTimeTableToJson;
  Map<String, dynamic> toJson() =>
      _$PagedModelEntityModelParamsTimeTableToJson(this);

  @JsonKey(name: '_embedded')
  final PagedModelEntityModelParamsTimeTable$Embedded? embedded;
  @JsonKey(name: '_links')
  final Links? links;
  @JsonKey(name: 'page')
  final PageMetadata? page;
  static const fromJsonFactory = _$PagedModelEntityModelParamsTimeTableFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PagedModelEntityModelParamsTimeTable &&
            (identical(other.embedded, embedded) ||
                const DeepCollectionEquality().equals(
                  other.embedded,
                  embedded,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(embedded) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(page) ^
      runtimeType.hashCode;
}

extension $PagedModelEntityModelParamsTimeTableExtension
    on PagedModelEntityModelParamsTimeTable {
  PagedModelEntityModelParamsTimeTable copyWith({
    PagedModelEntityModelParamsTimeTable$Embedded? embedded,
    Links? links,
    PageMetadata? page,
  }) {
    return PagedModelEntityModelParamsTimeTable(
      embedded: embedded ?? this.embedded,
      links: links ?? this.links,
      page: page ?? this.page,
    );
  }

  PagedModelEntityModelParamsTimeTable copyWithWrapped({
    Wrapped<PagedModelEntityModelParamsTimeTable$Embedded?>? embedded,
    Wrapped<Links?>? links,
    Wrapped<PageMetadata?>? page,
  }) {
    return PagedModelEntityModelParamsTimeTable(
      embedded: (embedded != null ? embedded.value : this.embedded),
      links: (links != null ? links.value : this.links),
      page: (page != null ? page.value : this.page),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EntityModelRoleEntity {
  const EntityModelRoleEntity({this.description, this.links});

  factory EntityModelRoleEntity.fromJson(Map<String, dynamic> json) =>
      _$EntityModelRoleEntityFromJson(json);

  static const toJsonFactory = _$EntityModelRoleEntityToJson;
  Map<String, dynamic> toJson() => _$EntityModelRoleEntityToJson(this);

  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: '_links')
  final Links? links;
  static const fromJsonFactory = _$EntityModelRoleEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EntityModelRoleEntity &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(links) ^
      runtimeType.hashCode;
}

extension $EntityModelRoleEntityExtension on EntityModelRoleEntity {
  EntityModelRoleEntity copyWith({String? description, Links? links}) {
    return EntityModelRoleEntity(
      description: description ?? this.description,
      links: links ?? this.links,
    );
  }

  EntityModelRoleEntity copyWithWrapped({
    Wrapped<String?>? description,
    Wrapped<Links?>? links,
  }) {
    return EntityModelRoleEntity(
      description: (description != null ? description.value : this.description),
      links: (links != null ? links.value : this.links),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PagedModelEntityModelRoleEntity {
  const PagedModelEntityModelRoleEntity({this.embedded, this.links, this.page});

  factory PagedModelEntityModelRoleEntity.fromJson(Map<String, dynamic> json) =>
      _$PagedModelEntityModelRoleEntityFromJson(json);

  static const toJsonFactory = _$PagedModelEntityModelRoleEntityToJson;
  Map<String, dynamic> toJson() =>
      _$PagedModelEntityModelRoleEntityToJson(this);

  @JsonKey(name: '_embedded')
  final PagedModelEntityModelRoleEntity$Embedded? embedded;
  @JsonKey(name: '_links')
  final Links? links;
  @JsonKey(name: 'page')
  final PageMetadata? page;
  static const fromJsonFactory = _$PagedModelEntityModelRoleEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PagedModelEntityModelRoleEntity &&
            (identical(other.embedded, embedded) ||
                const DeepCollectionEquality().equals(
                  other.embedded,
                  embedded,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(embedded) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(page) ^
      runtimeType.hashCode;
}

extension $PagedModelEntityModelRoleEntityExtension
    on PagedModelEntityModelRoleEntity {
  PagedModelEntityModelRoleEntity copyWith({
    PagedModelEntityModelRoleEntity$Embedded? embedded,
    Links? links,
    PageMetadata? page,
  }) {
    return PagedModelEntityModelRoleEntity(
      embedded: embedded ?? this.embedded,
      links: links ?? this.links,
      page: page ?? this.page,
    );
  }

  PagedModelEntityModelRoleEntity copyWithWrapped({
    Wrapped<PagedModelEntityModelRoleEntity$Embedded?>? embedded,
    Wrapped<Links?>? links,
    Wrapped<PageMetadata?>? page,
  }) {
    return PagedModelEntityModelRoleEntity(
      embedded: (embedded != null ? embedded.value : this.embedded),
      links: (links != null ? links.value : this.links),
      page: (page != null ? page.value : this.page),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CollectionModelEntityModelRoleEntity {
  const CollectionModelEntityModelRoleEntity({this.embedded, this.links});

  factory CollectionModelEntityModelRoleEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$CollectionModelEntityModelRoleEntityFromJson(json);

  static const toJsonFactory = _$CollectionModelEntityModelRoleEntityToJson;
  Map<String, dynamic> toJson() =>
      _$CollectionModelEntityModelRoleEntityToJson(this);

  @JsonKey(name: '_embedded')
  final CollectionModelEntityModelRoleEntity$Embedded? embedded;
  @JsonKey(name: '_links')
  final Links? links;
  static const fromJsonFactory = _$CollectionModelEntityModelRoleEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CollectionModelEntityModelRoleEntity &&
            (identical(other.embedded, embedded) ||
                const DeepCollectionEquality().equals(
                  other.embedded,
                  embedded,
                )) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(embedded) ^
      const DeepCollectionEquality().hash(links) ^
      runtimeType.hashCode;
}

extension $CollectionModelEntityModelRoleEntityExtension
    on CollectionModelEntityModelRoleEntity {
  CollectionModelEntityModelRoleEntity copyWith({
    CollectionModelEntityModelRoleEntity$Embedded? embedded,
    Links? links,
  }) {
    return CollectionModelEntityModelRoleEntity(
      embedded: embedded ?? this.embedded,
      links: links ?? this.links,
    );
  }

  CollectionModelEntityModelRoleEntity copyWithWrapped({
    Wrapped<CollectionModelEntityModelRoleEntity$Embedded?>? embedded,
    Wrapped<Links?>? links,
  }) {
    return CollectionModelEntityModelRoleEntity(
      embedded: (embedded != null ? embedded.value : this.embedded),
      links: (links != null ? links.value : this.links),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationEntityRequestBody {
  const NotificationEntityRequestBody({
    this.id,
    this.type,
    this.keyObject,
    this.textBody,
    this.createdDate,
  });

  factory NotificationEntityRequestBody.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityRequestBodyFromJson(json);

  static const toJsonFactory = _$NotificationEntityRequestBodyToJson;
  Map<String, dynamic> toJson() => _$NotificationEntityRequestBodyToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(
    name: 'type',
    toJson: notificationEntityRequestBodyTypeNullableToJson,
    fromJson: notificationEntityRequestBodyTypeNullableFromJson,
  )
  final enums.NotificationEntityRequestBodyType? type;
  @JsonKey(name: 'keyObject')
  final String? keyObject;
  @JsonKey(name: 'textBody')
  final String? textBody;
  @JsonKey(name: 'createdDate', toJson: _dateToJson)
  final DateTime? createdDate;
  static const fromJsonFactory = _$NotificationEntityRequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NotificationEntityRequestBody &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.keyObject, keyObject) ||
                const DeepCollectionEquality().equals(
                  other.keyObject,
                  keyObject,
                )) &&
            (identical(other.textBody, textBody) ||
                const DeepCollectionEquality().equals(
                  other.textBody,
                  textBody,
                )) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality().equals(
                  other.createdDate,
                  createdDate,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(keyObject) ^
      const DeepCollectionEquality().hash(textBody) ^
      const DeepCollectionEquality().hash(createdDate) ^
      runtimeType.hashCode;
}

extension $NotificationEntityRequestBodyExtension
    on NotificationEntityRequestBody {
  NotificationEntityRequestBody copyWith({
    int? id,
    enums.NotificationEntityRequestBodyType? type,
    String? keyObject,
    String? textBody,
    DateTime? createdDate,
  }) {
    return NotificationEntityRequestBody(
      id: id ?? this.id,
      type: type ?? this.type,
      keyObject: keyObject ?? this.keyObject,
      textBody: textBody ?? this.textBody,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  NotificationEntityRequestBody copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<enums.NotificationEntityRequestBodyType?>? type,
    Wrapped<String?>? keyObject,
    Wrapped<String?>? textBody,
    Wrapped<DateTime?>? createdDate,
  }) {
    return NotificationEntityRequestBody(
      id: (id != null ? id.value : this.id),
      type: (type != null ? type.value : this.type),
      keyObject: (keyObject != null ? keyObject.value : this.keyObject),
      textBody: (textBody != null ? textBody.value : this.textBody),
      createdDate: (createdDate != null ? createdDate.value : this.createdDate),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ParamsTimeTableRequestBody {
  const ParamsTimeTableRequestBody({
    this.paramType,
    this.value,
    this.updateDate,
  });

  factory ParamsTimeTableRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ParamsTimeTableRequestBodyFromJson(json);

  static const toJsonFactory = _$ParamsTimeTableRequestBodyToJson;
  Map<String, dynamic> toJson() => _$ParamsTimeTableRequestBodyToJson(this);

  @JsonKey(
    name: 'paramType',
    toJson: paramsTimeTableRequestBodyParamTypeNullableToJson,
    fromJson: paramsTimeTableRequestBodyParamTypeNullableFromJson,
  )
  final enums.ParamsTimeTableRequestBodyParamType? paramType;
  @JsonKey(name: 'value')
  final String? value;
  @JsonKey(name: 'updateDate')
  final DateTime? updateDate;
  static const fromJsonFactory = _$ParamsTimeTableRequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ParamsTimeTableRequestBody &&
            (identical(other.paramType, paramType) ||
                const DeepCollectionEquality().equals(
                  other.paramType,
                  paramType,
                )) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.updateDate, updateDate) ||
                const DeepCollectionEquality().equals(
                  other.updateDate,
                  updateDate,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(paramType) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(updateDate) ^
      runtimeType.hashCode;
}

extension $ParamsTimeTableRequestBodyExtension on ParamsTimeTableRequestBody {
  ParamsTimeTableRequestBody copyWith({
    enums.ParamsTimeTableRequestBodyParamType? paramType,
    String? value,
    DateTime? updateDate,
  }) {
    return ParamsTimeTableRequestBody(
      paramType: paramType ?? this.paramType,
      value: value ?? this.value,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  ParamsTimeTableRequestBody copyWithWrapped({
    Wrapped<enums.ParamsTimeTableRequestBodyParamType?>? paramType,
    Wrapped<String?>? value,
    Wrapped<DateTime?>? updateDate,
  }) {
    return ParamsTimeTableRequestBody(
      paramType: (paramType != null ? paramType.value : this.paramType),
      value: (value != null ? value.value : this.value),
      updateDate: (updateDate != null ? updateDate.value : this.updateDate),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RoleEntityRequestBody {
  const RoleEntityRequestBody({this.name, this.description, this.roles});

  factory RoleEntityRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RoleEntityRequestBodyFromJson(json);

  static const toJsonFactory = _$RoleEntityRequestBodyToJson;
  Map<String, dynamic> toJson() => _$RoleEntityRequestBodyToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'roles', defaultValue: <String>[])
  final List<String>? roles;
  static const fromJsonFactory = _$RoleEntityRequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RoleEntityRequestBody &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(roles) ^
      runtimeType.hashCode;
}

extension $RoleEntityRequestBodyExtension on RoleEntityRequestBody {
  RoleEntityRequestBody copyWith({
    String? name,
    String? description,
    List<String>? roles,
  }) {
    return RoleEntityRequestBody(
      name: name ?? this.name,
      description: description ?? this.description,
      roles: roles ?? this.roles,
    );
  }

  RoleEntityRequestBody copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? description,
    Wrapped<List<String>?>? roles,
  }) {
    return RoleEntityRequestBody(
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
      roles: (roles != null ? roles.value : this.roles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RoleEntityResponse {
  const RoleEntityResponse({this.description});

  factory RoleEntityResponse.fromJson(Map<String, dynamic> json) =>
      _$RoleEntityResponseFromJson(json);

  static const toJsonFactory = _$RoleEntityResponseToJson;
  Map<String, dynamic> toJson() => _$RoleEntityResponseToJson(this);

  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$RoleEntityResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RoleEntityResponse &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^ runtimeType.hashCode;
}

extension $RoleEntityResponseExtension on RoleEntityResponse {
  RoleEntityResponse copyWith({String? description}) {
    return RoleEntityResponse(description: description ?? this.description);
  }

  RoleEntityResponse copyWithWrapped({Wrapped<String?>? description}) {
    return RoleEntityResponse(
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserEntityRequestBody {
  const UserEntityRequestBody({
    this.id,
    this.username,
    this.password,
    this.active,
    this.ldapAuth,
    this.created,
    this.changed,
    this.roles,
  });

  factory UserEntityRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UserEntityRequestBodyFromJson(json);

  static const toJsonFactory = _$UserEntityRequestBodyToJson;
  Map<String, dynamic> toJson() => _$UserEntityRequestBodyToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'ldapAuth')
  final bool? ldapAuth;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'changed')
  final DateTime? changed;
  @JsonKey(name: 'roles', defaultValue: <String>[])
  final List<String>? roles;
  static const fromJsonFactory = _$UserEntityRequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserEntityRequestBody &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality().equals(
                  other.username,
                  username,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.ldapAuth, ldapAuth) ||
                const DeepCollectionEquality().equals(
                  other.ldapAuth,
                  ldapAuth,
                )) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(
                  other.created,
                  created,
                )) &&
            (identical(other.changed, changed) ||
                const DeepCollectionEquality().equals(
                  other.changed,
                  changed,
                )) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(ldapAuth) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(changed) ^
      const DeepCollectionEquality().hash(roles) ^
      runtimeType.hashCode;
}

extension $UserEntityRequestBodyExtension on UserEntityRequestBody {
  UserEntityRequestBody copyWith({
    int? id,
    String? username,
    String? password,
    bool? active,
    bool? ldapAuth,
    DateTime? created,
    DateTime? changed,
    List<String>? roles,
  }) {
    return UserEntityRequestBody(
      id: id ?? this.id,
      username: username ?? this.username,
      password: password ?? this.password,
      active: active ?? this.active,
      ldapAuth: ldapAuth ?? this.ldapAuth,
      created: created ?? this.created,
      changed: changed ?? this.changed,
      roles: roles ?? this.roles,
    );
  }

  UserEntityRequestBody copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? username,
    Wrapped<String?>? password,
    Wrapped<bool?>? active,
    Wrapped<bool?>? ldapAuth,
    Wrapped<DateTime?>? created,
    Wrapped<DateTime?>? changed,
    Wrapped<List<String>?>? roles,
  }) {
    return UserEntityRequestBody(
      id: (id != null ? id.value : this.id),
      username: (username != null ? username.value : this.username),
      password: (password != null ? password.value : this.password),
      active: (active != null ? active.value : this.active),
      ldapAuth: (ldapAuth != null ? ldapAuth.value : this.ldapAuth),
      created: (created != null ? created.value : this.created),
      changed: (changed != null ? changed.value : this.changed),
      roles: (roles != null ? roles.value : this.roles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RoleModel {
  const RoleModel({this.name, this.description, this.privileges});

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);

  static const toJsonFactory = _$RoleModelToJson;
  Map<String, dynamic> toJson() => _$RoleModelToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'privileges', defaultValue: <StrRefModel>[])
  final List<StrRefModel>? privileges;
  static const fromJsonFactory = _$RoleModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RoleModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.privileges, privileges) ||
                const DeepCollectionEquality().equals(
                  other.privileges,
                  privileges,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(privileges) ^
      runtimeType.hashCode;
}

extension $RoleModelExtension on RoleModel {
  RoleModel copyWith({
    String? name,
    String? description,
    List<StrRefModel>? privileges,
  }) {
    return RoleModel(
      name: name ?? this.name,
      description: description ?? this.description,
      privileges: privileges ?? this.privileges,
    );
  }

  RoleModel copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? description,
    Wrapped<List<StrRefModel>?>? privileges,
  }) {
    return RoleModel(
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
      privileges: (privileges != null ? privileges.value : this.privileges),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class StrRefModel {
  const StrRefModel({this.key, this.val});

  factory StrRefModel.fromJson(Map<String, dynamic> json) =>
      _$StrRefModelFromJson(json);

  static const toJsonFactory = _$StrRefModelToJson;
  Map<String, dynamic> toJson() => _$StrRefModelToJson(this);

  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'val')
  final String? val;
  static const fromJsonFactory = _$StrRefModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is StrRefModel &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.val, val) ||
                const DeepCollectionEquality().equals(other.val, val)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(val) ^
      runtimeType.hashCode;
}

extension $StrRefModelExtension on StrRefModel {
  StrRefModel copyWith({String? key, String? val}) {
    return StrRefModel(key: key ?? this.key, val: val ?? this.val);
  }

  StrRefModel copyWithWrapped({Wrapped<String?>? key, Wrapped<String?>? val}) {
    return StrRefModel(
      key: (key != null ? key.value : this.key),
      val: (val != null ? val.value : this.val),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserModel {
  const UserModel({
    this.id,
    this.username,
    this.password,
    this.active,
    this.ldapAuth,
    this.roles,
    this.created,
    this.changed,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  static const toJsonFactory = _$UserModelToJson;
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'ldapAuth')
  final bool? ldapAuth;
  @JsonKey(name: 'roles', defaultValue: <RoleModel>[])
  final List<RoleModel>? roles;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'changed')
  final DateTime? changed;
  static const fromJsonFactory = _$UserModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality().equals(
                  other.username,
                  username,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.ldapAuth, ldapAuth) ||
                const DeepCollectionEquality().equals(
                  other.ldapAuth,
                  ldapAuth,
                )) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(
                  other.created,
                  created,
                )) &&
            (identical(other.changed, changed) ||
                const DeepCollectionEquality().equals(other.changed, changed)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(ldapAuth) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(changed) ^
      runtimeType.hashCode;
}

extension $UserModelExtension on UserModel {
  UserModel copyWith({
    int? id,
    String? username,
    String? password,
    bool? active,
    bool? ldapAuth,
    List<RoleModel>? roles,
    DateTime? created,
    DateTime? changed,
  }) {
    return UserModel(
      id: id ?? this.id,
      username: username ?? this.username,
      password: password ?? this.password,
      active: active ?? this.active,
      ldapAuth: ldapAuth ?? this.ldapAuth,
      roles: roles ?? this.roles,
      created: created ?? this.created,
      changed: changed ?? this.changed,
    );
  }

  UserModel copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? username,
    Wrapped<String?>? password,
    Wrapped<bool?>? active,
    Wrapped<bool?>? ldapAuth,
    Wrapped<List<RoleModel>?>? roles,
    Wrapped<DateTime?>? created,
    Wrapped<DateTime?>? changed,
  }) {
    return UserModel(
      id: (id != null ? id.value : this.id),
      username: (username != null ? username.value : this.username),
      password: (password != null ? password.value : this.password),
      active: (active != null ? active.value : this.active),
      ldapAuth: (ldapAuth != null ? ldapAuth.value : this.ldapAuth),
      roles: (roles != null ? roles.value : this.roles),
      created: (created != null ? created.value : this.created),
      changed: (changed != null ? changed.value : this.changed),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ParamsTimeTableModel {
  const ParamsTimeTableModel({this.paramType, this.value});

  factory ParamsTimeTableModel.fromJson(Map<String, dynamic> json) =>
      _$ParamsTimeTableModelFromJson(json);

  static const toJsonFactory = _$ParamsTimeTableModelToJson;
  Map<String, dynamic> toJson() => _$ParamsTimeTableModelToJson(this);

  @JsonKey(
    name: 'paramType',
    toJson: paramsTimeTableModelParamTypeNullableToJson,
    fromJson: paramsTimeTableModelParamTypeNullableFromJson,
  )
  final enums.ParamsTimeTableModelParamType? paramType;
  @JsonKey(name: 'value')
  final String? value;
  static const fromJsonFactory = _$ParamsTimeTableModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ParamsTimeTableModel &&
            (identical(other.paramType, paramType) ||
                const DeepCollectionEquality().equals(
                  other.paramType,
                  paramType,
                )) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(paramType) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $ParamsTimeTableModelExtension on ParamsTimeTableModel {
  ParamsTimeTableModel copyWith({
    enums.ParamsTimeTableModelParamType? paramType,
    String? value,
  }) {
    return ParamsTimeTableModel(
      paramType: paramType ?? this.paramType,
      value: value ?? this.value,
    );
  }

  ParamsTimeTableModel copyWithWrapped({
    Wrapped<enums.ParamsTimeTableModelParamType?>? paramType,
    Wrapped<String?>? value,
  }) {
    return ParamsTimeTableModel(
      paramType: (paramType != null ? paramType.value : this.paramType),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AuthenticationRequest {
  const AuthenticationRequest({this.username, this.password});

  factory AuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationRequestFromJson(json);

  static const toJsonFactory = _$AuthenticationRequestToJson;
  Map<String, dynamic> toJson() => _$AuthenticationRequestToJson(this);

  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'password')
  final String? password;
  static const fromJsonFactory = _$AuthenticationRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AuthenticationRequest &&
            (identical(other.username, username) ||
                const DeepCollectionEquality().equals(
                  other.username,
                  username,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $AuthenticationRequestExtension on AuthenticationRequest {
  AuthenticationRequest copyWith({String? username, String? password}) {
    return AuthenticationRequest(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  AuthenticationRequest copyWithWrapped({
    Wrapped<String?>? username,
    Wrapped<String?>? password,
  }) {
    return AuthenticationRequest(
      username: (username != null ? username.value : this.username),
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataModelString {
  const DataModelString({this.data, this.error});

  factory DataModelString.fromJson(Map<String, dynamic> json) =>
      _$DataModelStringFromJson(json);

  static const toJsonFactory = _$DataModelStringToJson;
  Map<String, dynamic> toJson() => _$DataModelStringToJson(this);

  @JsonKey(name: 'data')
  final String? data;
  @JsonKey(name: 'error')
  final ErrorDescription? error;
  static const fromJsonFactory = _$DataModelStringFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataModelString &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataModelStringExtension on DataModelString {
  DataModelString copyWith({String? data, ErrorDescription? error}) {
    return DataModelString(data: data ?? this.data, error: error ?? this.error);
  }

  DataModelString copyWithWrapped({
    Wrapped<String?>? data,
    Wrapped<ErrorDescription?>? error,
  }) {
    return DataModelString(
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ErrorDescription {
  const ErrorDescription({this.code, this.status, this.description});

  factory ErrorDescription.fromJson(Map<String, dynamic> json) =>
      _$ErrorDescriptionFromJson(json);

  static const toJsonFactory = _$ErrorDescriptionToJson;
  Map<String, dynamic> toJson() => _$ErrorDescriptionToJson(this);

  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(
    name: 'status',
    toJson: errorDescriptionStatusNullableToJson,
    fromJson: errorDescriptionStatusNullableFromJson,
  )
  final enums.ErrorDescriptionStatus? status;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$ErrorDescriptionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ErrorDescription &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $ErrorDescriptionExtension on ErrorDescription {
  ErrorDescription copyWith({
    int? code,
    enums.ErrorDescriptionStatus? status,
    String? description,
  }) {
    return ErrorDescription(
      code: code ?? this.code,
      status: status ?? this.status,
      description: description ?? this.description,
    );
  }

  ErrorDescription copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<enums.ErrorDescriptionStatus?>? status,
    Wrapped<String?>? description,
  }) {
    return ErrorDescription(
      code: (code != null ? code.value : this.code),
      status: (status != null ? status.value : this.status),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Pageable {
  const Pageable({this.page, this.size, this.sort});

  factory Pageable.fromJson(Map<String, dynamic> json) =>
      _$PageableFromJson(json);

  static const toJsonFactory = _$PageableToJson;
  Map<String, dynamic> toJson() => _$PageableToJson(this);

  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'size')
  final int? size;
  @JsonKey(name: 'sort', defaultValue: <String>[])
  final List<String>? sort;
  static const fromJsonFactory = _$PageableFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Pageable &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(sort) ^
      runtimeType.hashCode;
}

extension $PageableExtension on Pageable {
  Pageable copyWith({int? page, int? size, List<String>? sort}) {
    return Pageable(
      page: page ?? this.page,
      size: size ?? this.size,
      sort: sort ?? this.sort,
    );
  }

  Pageable copyWithWrapped({
    Wrapped<int?>? page,
    Wrapped<int?>? size,
    Wrapped<List<String>?>? sort,
  }) {
    return Pageable(
      page: (page != null ? page.value : this.page),
      size: (size != null ? size.value : this.size),
      sort: (sort != null ? sort.value : this.sort),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PageModelUserModel {
  const PageModelUserModel({this.total, this.content});

  factory PageModelUserModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelUserModelFromJson(json);

  static const toJsonFactory = _$PageModelUserModelToJson;
  Map<String, dynamic> toJson() => _$PageModelUserModelToJson(this);

  @JsonKey(name: 'total')
  final int? total;
  @JsonKey(name: 'content', defaultValue: <UserModel>[])
  final List<UserModel>? content;
  static const fromJsonFactory = _$PageModelUserModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageModelUserModel &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $PageModelUserModelExtension on PageModelUserModel {
  PageModelUserModel copyWith({int? total, List<UserModel>? content}) {
    return PageModelUserModel(
      total: total ?? this.total,
      content: content ?? this.content,
    );
  }

  PageModelUserModel copyWithWrapped({
    Wrapped<int?>? total,
    Wrapped<List<UserModel>?>? content,
  }) {
    return PageModelUserModel(
      total: (total != null ? total.value : this.total),
      content: (content != null ? content.value : this.content),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BaseModel {
  const BaseModel({required this.id, required this.title});

  factory BaseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseModelFromJson(json);

  static const toJsonFactory = _$BaseModelToJson;
  Map<String, dynamic> toJson() => _$BaseModelToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'title')
  final String title;
  static const fromJsonFactory = _$BaseModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BaseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      runtimeType.hashCode;
}

extension $BaseModelExtension on BaseModel {
  BaseModel copyWith({int? id, String? title}) {
    return BaseModel(id: id ?? this.id, title: title ?? this.title);
  }

  BaseModel copyWithWrapped({Wrapped<int>? id, Wrapped<String>? title}) {
    return BaseModel(
      id: (id != null ? id.value : this.id),
      title: (title != null ? title.value : this.title),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TeacherModel {
  const TeacherModel({
    this.id,
    this.lastName,
    this.firstName,
    this.middleName,
    this.shortName,
    this.fio,
  });

  factory TeacherModel.fromJson(Map<String, dynamic> json) =>
      _$TeacherModelFromJson(json);

  static const toJsonFactory = _$TeacherModelToJson;
  Map<String, dynamic> toJson() => _$TeacherModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'middleName')
  final String? middleName;
  @JsonKey(name: 'shortName')
  final String? shortName;
  @JsonKey(name: 'fio')
  final String? fio;
  static const fromJsonFactory = _$TeacherModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TeacherModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality().equals(
                  other.lastName,
                  lastName,
                )) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(
                  other.firstName,
                  firstName,
                )) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality().equals(
                  other.middleName,
                  middleName,
                )) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality().equals(
                  other.shortName,
                  shortName,
                )) &&
            (identical(other.fio, fio) ||
                const DeepCollectionEquality().equals(other.fio, fio)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(fio) ^
      runtimeType.hashCode;
}

extension $TeacherModelExtension on TeacherModel {
  TeacherModel copyWith({
    int? id,
    String? lastName,
    String? firstName,
    String? middleName,
    String? shortName,
    String? fio,
  }) {
    return TeacherModel(
      id: id ?? this.id,
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      shortName: shortName ?? this.shortName,
      fio: fio ?? this.fio,
    );
  }

  TeacherModel copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? lastName,
    Wrapped<String?>? firstName,
    Wrapped<String?>? middleName,
    Wrapped<String?>? shortName,
    Wrapped<String?>? fio,
  }) {
    return TeacherModel(
      id: (id != null ? id.value : this.id),
      lastName: (lastName != null ? lastName.value : this.lastName),
      firstName: (firstName != null ? firstName.value : this.firstName),
      middleName: (middleName != null ? middleName.value : this.middleName),
      shortName: (shortName != null ? shortName.value : this.shortName),
      fio: (fio != null ? fio.value : this.fio),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TimeTableModel {
  const TimeTableModel({
    this.id,
    this.dateEvent,
    this.startTime,
    this.endTime,
    this.discipline,
    this.groups,
    this.build,
    this.auditory,
    this.lecturers,
    this.abbrlessontype,
    this.lessontype,
    this.week,
    this.weekday,
    this.weekType,
    this.onlineEvent,
    this.online,
  });

  factory TimeTableModel.fromJson(Map<String, dynamic> json) =>
      _$TimeTableModelFromJson(json);

  static const toJsonFactory = _$TimeTableModelToJson;
  Map<String, dynamic> toJson() => _$TimeTableModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'dateEvent', toJson: _dateToJson)
  final DateTime? dateEvent;
  @JsonKey(name: 'startTime')
  final String? startTime;
  @JsonKey(name: 'endTime')
  final String? endTime;
  @JsonKey(name: 'discipline')
  final BaseModel? discipline;
  @JsonKey(name: 'groups', defaultValue: <BaseModel>[])
  final List<BaseModel>? groups;
  @JsonKey(name: 'build')
  final BaseModel? build;
  @JsonKey(name: 'auditory')
  final BaseModel? auditory;
  @JsonKey(name: 'lecturers', defaultValue: <TeacherModel>[])
  final List<TeacherModel>? lecturers;
  @JsonKey(name: 'abbrlessontype')
  final String? abbrlessontype;
  @JsonKey(name: 'lessontype')
  final String? lessontype;
  @JsonKey(name: 'week')
  final int? week;
  @JsonKey(name: 'weekday')
  final int? weekday;
  @JsonKey(name: 'weekType')
  final String? weekType;
  @JsonKey(name: 'onlineEvent')
  final String? onlineEvent;
  @JsonKey(name: 'online')
  final int? online;
  static const fromJsonFactory = _$TimeTableModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TimeTableModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.dateEvent, dateEvent) ||
                const DeepCollectionEquality().equals(
                  other.dateEvent,
                  dateEvent,
                )) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality().equals(
                  other.startTime,
                  startTime,
                )) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(
                  other.endTime,
                  endTime,
                )) &&
            (identical(other.discipline, discipline) ||
                const DeepCollectionEquality().equals(
                  other.discipline,
                  discipline,
                )) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.build, build) ||
                const DeepCollectionEquality().equals(other.build, build)) &&
            (identical(other.auditory, auditory) ||
                const DeepCollectionEquality().equals(
                  other.auditory,
                  auditory,
                )) &&
            (identical(other.lecturers, lecturers) ||
                const DeepCollectionEquality().equals(
                  other.lecturers,
                  lecturers,
                )) &&
            (identical(other.abbrlessontype, abbrlessontype) ||
                const DeepCollectionEquality().equals(
                  other.abbrlessontype,
                  abbrlessontype,
                )) &&
            (identical(other.lessontype, lessontype) ||
                const DeepCollectionEquality().equals(
                  other.lessontype,
                  lessontype,
                )) &&
            (identical(other.week, week) ||
                const DeepCollectionEquality().equals(other.week, week)) &&
            (identical(other.weekday, weekday) ||
                const DeepCollectionEquality().equals(
                  other.weekday,
                  weekday,
                )) &&
            (identical(other.weekType, weekType) ||
                const DeepCollectionEquality().equals(
                  other.weekType,
                  weekType,
                )) &&
            (identical(other.onlineEvent, onlineEvent) ||
                const DeepCollectionEquality().equals(
                  other.onlineEvent,
                  onlineEvent,
                )) &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(dateEvent) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(discipline) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(build) ^
      const DeepCollectionEquality().hash(auditory) ^
      const DeepCollectionEquality().hash(lecturers) ^
      const DeepCollectionEquality().hash(abbrlessontype) ^
      const DeepCollectionEquality().hash(lessontype) ^
      const DeepCollectionEquality().hash(week) ^
      const DeepCollectionEquality().hash(weekday) ^
      const DeepCollectionEquality().hash(weekType) ^
      const DeepCollectionEquality().hash(onlineEvent) ^
      const DeepCollectionEquality().hash(online) ^
      runtimeType.hashCode;
}

extension $TimeTableModelExtension on TimeTableModel {
  TimeTableModel copyWith({
    int? id,
    DateTime? dateEvent,
    String? startTime,
    String? endTime,
    BaseModel? discipline,
    List<BaseModel>? groups,
    BaseModel? build,
    BaseModel? auditory,
    List<TeacherModel>? lecturers,
    String? abbrlessontype,
    String? lessontype,
    int? week,
    int? weekday,
    String? weekType,
    String? onlineEvent,
    int? online,
  }) {
    return TimeTableModel(
      id: id ?? this.id,
      dateEvent: dateEvent ?? this.dateEvent,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      discipline: discipline ?? this.discipline,
      groups: groups ?? this.groups,
      build: build ?? this.build,
      auditory: auditory ?? this.auditory,
      lecturers: lecturers ?? this.lecturers,
      abbrlessontype: abbrlessontype ?? this.abbrlessontype,
      lessontype: lessontype ?? this.lessontype,
      week: week ?? this.week,
      weekday: weekday ?? this.weekday,
      weekType: weekType ?? this.weekType,
      onlineEvent: onlineEvent ?? this.onlineEvent,
      online: online ?? this.online,
    );
  }

  TimeTableModel copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<DateTime?>? dateEvent,
    Wrapped<String?>? startTime,
    Wrapped<String?>? endTime,
    Wrapped<BaseModel?>? discipline,
    Wrapped<List<BaseModel>?>? groups,
    Wrapped<BaseModel?>? build,
    Wrapped<BaseModel?>? auditory,
    Wrapped<List<TeacherModel>?>? lecturers,
    Wrapped<String?>? abbrlessontype,
    Wrapped<String?>? lessontype,
    Wrapped<int?>? week,
    Wrapped<int?>? weekday,
    Wrapped<String?>? weekType,
    Wrapped<String?>? onlineEvent,
    Wrapped<int?>? online,
  }) {
    return TimeTableModel(
      id: (id != null ? id.value : this.id),
      dateEvent: (dateEvent != null ? dateEvent.value : this.dateEvent),
      startTime: (startTime != null ? startTime.value : this.startTime),
      endTime: (endTime != null ? endTime.value : this.endTime),
      discipline: (discipline != null ? discipline.value : this.discipline),
      groups: (groups != null ? groups.value : this.groups),
      build: (build != null ? build.value : this.build),
      auditory: (auditory != null ? auditory.value : this.auditory),
      lecturers: (lecturers != null ? lecturers.value : this.lecturers),
      abbrlessontype: (abbrlessontype != null
          ? abbrlessontype.value
          : this.abbrlessontype),
      lessontype: (lessontype != null ? lessontype.value : this.lessontype),
      week: (week != null ? week.value : this.week),
      weekday: (weekday != null ? weekday.value : this.weekday),
      weekType: (weekType != null ? weekType.value : this.weekType),
      onlineEvent: (onlineEvent != null ? onlineEvent.value : this.onlineEvent),
      online: (online != null ? online.value : this.online),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Skill {
  const Skill({this.code, this.name});

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

  static const toJsonFactory = _$SkillToJson;
  Map<String, dynamic> toJson() => _$SkillToJson(this);

  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$SkillFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Skill &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $SkillExtension on Skill {
  Skill copyWith({String? code, String? name}) {
    return Skill(code: code ?? this.code, name: name ?? this.name);
  }

  Skill copyWithWrapped({Wrapped<String?>? code, Wrapped<String?>? name}) {
    return Skill(
      code: (code != null ? code.value : this.code),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SkillModel {
  const SkillModel({this.principalId, this.username, this.disciplines});

  factory SkillModel.fromJson(Map<String, dynamic> json) =>
      _$SkillModelFromJson(json);

  static const toJsonFactory = _$SkillModelToJson;
  Map<String, dynamic> toJson() => _$SkillModelToJson(this);

  @JsonKey(name: 'principalId')
  final int? principalId;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'disciplines', defaultValue: <SkillRowModel>[])
  final List<SkillRowModel>? disciplines;
  static const fromJsonFactory = _$SkillModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SkillModel &&
            (identical(other.principalId, principalId) ||
                const DeepCollectionEquality().equals(
                  other.principalId,
                  principalId,
                )) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality().equals(
                  other.username,
                  username,
                )) &&
            (identical(other.disciplines, disciplines) ||
                const DeepCollectionEquality().equals(
                  other.disciplines,
                  disciplines,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(principalId) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(disciplines) ^
      runtimeType.hashCode;
}

extension $SkillModelExtension on SkillModel {
  SkillModel copyWith({
    int? principalId,
    String? username,
    List<SkillRowModel>? disciplines,
  }) {
    return SkillModel(
      principalId: principalId ?? this.principalId,
      username: username ?? this.username,
      disciplines: disciplines ?? this.disciplines,
    );
  }

  SkillModel copyWithWrapped({
    Wrapped<int?>? principalId,
    Wrapped<String?>? username,
    Wrapped<List<SkillRowModel>?>? disciplines,
  }) {
    return SkillModel(
      principalId: (principalId != null ? principalId.value : this.principalId),
      username: (username != null ? username.value : this.username),
      disciplines: (disciplines != null ? disciplines.value : this.disciplines),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SkillRowModel {
  const SkillRowModel({this.discipline, this.skills});

  factory SkillRowModel.fromJson(Map<String, dynamic> json) =>
      _$SkillRowModelFromJson(json);

  static const toJsonFactory = _$SkillRowModelToJson;
  Map<String, dynamic> toJson() => _$SkillRowModelToJson(this);

  @JsonKey(name: 'discipline')
  final String? discipline;
  @JsonKey(name: 'skills', defaultValue: <Skill>[])
  final List<Skill>? skills;
  static const fromJsonFactory = _$SkillRowModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SkillRowModel &&
            (identical(other.discipline, discipline) ||
                const DeepCollectionEquality().equals(
                  other.discipline,
                  discipline,
                )) &&
            (identical(other.skills, skills) ||
                const DeepCollectionEquality().equals(other.skills, skills)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(discipline) ^
      const DeepCollectionEquality().hash(skills) ^
      runtimeType.hashCode;
}

extension $SkillRowModelExtension on SkillRowModel {
  SkillRowModel copyWith({String? discipline, List<Skill>? skills}) {
    return SkillRowModel(
      discipline: discipline ?? this.discipline,
      skills: skills ?? this.skills,
    );
  }

  SkillRowModel copyWithWrapped({
    Wrapped<String?>? discipline,
    Wrapped<List<Skill>?>? skills,
  }) {
    return SkillRowModel(
      discipline: (discipline != null ? discipline.value : this.discipline),
      skills: (skills != null ? skills.value : this.skills),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PageModelRoleModel {
  const PageModelRoleModel({this.total, this.content});

  factory PageModelRoleModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelRoleModelFromJson(json);

  static const toJsonFactory = _$PageModelRoleModelToJson;
  Map<String, dynamic> toJson() => _$PageModelRoleModelToJson(this);

  @JsonKey(name: 'total')
  final int? total;
  @JsonKey(name: 'content', defaultValue: <RoleModel>[])
  final List<RoleModel>? content;
  static const fromJsonFactory = _$PageModelRoleModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageModelRoleModel &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $PageModelRoleModelExtension on PageModelRoleModel {
  PageModelRoleModel copyWith({int? total, List<RoleModel>? content}) {
    return PageModelRoleModel(
      total: total ?? this.total,
      content: content ?? this.content,
    );
  }

  PageModelRoleModel copyWithWrapped({
    Wrapped<int?>? total,
    Wrapped<List<RoleModel>?>? content,
  }) {
    return PageModelRoleModel(
      total: (total != null ? total.value : this.total),
      content: (content != null ? content.value : this.content),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PageModelPersonModel {
  const PageModelPersonModel({this.total, this.content});

  factory PageModelPersonModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelPersonModelFromJson(json);

  static const toJsonFactory = _$PageModelPersonModelToJson;
  Map<String, dynamic> toJson() => _$PageModelPersonModelToJson(this);

  @JsonKey(name: 'total')
  final int? total;
  @JsonKey(name: 'content', defaultValue: <PersonModel>[])
  final List<PersonModel>? content;
  static const fromJsonFactory = _$PageModelPersonModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageModelPersonModel &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $PageModelPersonModelExtension on PageModelPersonModel {
  PageModelPersonModel copyWith({int? total, List<PersonModel>? content}) {
    return PageModelPersonModel(
      total: total ?? this.total,
      content: content ?? this.content,
    );
  }

  PageModelPersonModel copyWithWrapped({
    Wrapped<int?>? total,
    Wrapped<List<PersonModel>?>? content,
  }) {
    return PageModelPersonModel(
      total: (total != null ? total.value : this.total),
      content: (content != null ? content.value : this.content),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PersonModel {
  const PersonModel({
    required this.id,
    required this.guid,
    required this.fio,
    required this.lastName,
    required this.firstName,
    this.middleName,
    this.personNum,
    required this.email,
    this.active,
    this.groups,
    this.posts,
    this.startAccessDate,
    this.endAccessDate,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);

  static const toJsonFactory = _$PersonModelToJson;
  Map<String, dynamic> toJson() => _$PersonModelToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'guid')
  final String guid;
  @JsonKey(name: 'fio')
  final String fio;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'middleName')
  final String? middleName;
  @JsonKey(name: 'personNum')
  final String? personNum;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'active')
  final int? active;
  @JsonKey(name: 'groups', defaultValue: <StudentGroupPersonModel>[])
  final List<StudentGroupPersonModel>? groups;
  @JsonKey(name: 'posts', defaultValue: <PostPersonModel>[])
  final List<PostPersonModel>? posts;
  @JsonKey(name: 'startAccessDate')
  final DateTime? startAccessDate;
  @JsonKey(name: 'endAccessDate')
  final DateTime? endAccessDate;
  static const fromJsonFactory = _$PersonModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PersonModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.fio, fio) ||
                const DeepCollectionEquality().equals(other.fio, fio)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality().equals(
                  other.lastName,
                  lastName,
                )) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(
                  other.firstName,
                  firstName,
                )) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality().equals(
                  other.middleName,
                  middleName,
                )) &&
            (identical(other.personNum, personNum) ||
                const DeepCollectionEquality().equals(
                  other.personNum,
                  personNum,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.startAccessDate, startAccessDate) ||
                const DeepCollectionEquality().equals(
                  other.startAccessDate,
                  startAccessDate,
                )) &&
            (identical(other.endAccessDate, endAccessDate) ||
                const DeepCollectionEquality().equals(
                  other.endAccessDate,
                  endAccessDate,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(fio) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(personNum) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(startAccessDate) ^
      const DeepCollectionEquality().hash(endAccessDate) ^
      runtimeType.hashCode;
}

extension $PersonModelExtension on PersonModel {
  PersonModel copyWith({
    int? id,
    String? guid,
    String? fio,
    String? lastName,
    String? firstName,
    String? middleName,
    String? personNum,
    String? email,
    int? active,
    List<StudentGroupPersonModel>? groups,
    List<PostPersonModel>? posts,
    DateTime? startAccessDate,
    DateTime? endAccessDate,
  }) {
    return PersonModel(
      id: id ?? this.id,
      guid: guid ?? this.guid,
      fio: fio ?? this.fio,
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      personNum: personNum ?? this.personNum,
      email: email ?? this.email,
      active: active ?? this.active,
      groups: groups ?? this.groups,
      posts: posts ?? this.posts,
      startAccessDate: startAccessDate ?? this.startAccessDate,
      endAccessDate: endAccessDate ?? this.endAccessDate,
    );
  }

  PersonModel copyWithWrapped({
    Wrapped<int>? id,
    Wrapped<String>? guid,
    Wrapped<String>? fio,
    Wrapped<String>? lastName,
    Wrapped<String>? firstName,
    Wrapped<String?>? middleName,
    Wrapped<String?>? personNum,
    Wrapped<String>? email,
    Wrapped<int?>? active,
    Wrapped<List<StudentGroupPersonModel>?>? groups,
    Wrapped<List<PostPersonModel>?>? posts,
    Wrapped<DateTime?>? startAccessDate,
    Wrapped<DateTime?>? endAccessDate,
  }) {
    return PersonModel(
      id: (id != null ? id.value : this.id),
      guid: (guid != null ? guid.value : this.guid),
      fio: (fio != null ? fio.value : this.fio),
      lastName: (lastName != null ? lastName.value : this.lastName),
      firstName: (firstName != null ? firstName.value : this.firstName),
      middleName: (middleName != null ? middleName.value : this.middleName),
      personNum: (personNum != null ? personNum.value : this.personNum),
      email: (email != null ? email.value : this.email),
      active: (active != null ? active.value : this.active),
      groups: (groups != null ? groups.value : this.groups),
      posts: (posts != null ? posts.value : this.posts),
      startAccessDate: (startAccessDate != null
          ? startAccessDate.value
          : this.startAccessDate),
      endAccessDate: (endAccessDate != null
          ? endAccessDate.value
          : this.endAccessDate),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PostPersonModel {
  const PostPersonModel({this.id, this.title, this.department, this.main});

  factory PostPersonModel.fromJson(Map<String, dynamic> json) =>
      _$PostPersonModelFromJson(json);

  static const toJsonFactory = _$PostPersonModelToJson;
  Map<String, dynamic> toJson() => _$PostPersonModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'department')
  final BaseModel? department;
  @JsonKey(name: 'main')
  final bool? main;
  static const fromJsonFactory = _$PostPersonModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PostPersonModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality().equals(
                  other.department,
                  department,
                )) &&
            (identical(other.main, main) ||
                const DeepCollectionEquality().equals(other.main, main)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(department) ^
      const DeepCollectionEquality().hash(main) ^
      runtimeType.hashCode;
}

extension $PostPersonModelExtension on PostPersonModel {
  PostPersonModel copyWith({
    int? id,
    String? title,
    BaseModel? department,
    bool? main,
  }) {
    return PostPersonModel(
      id: id ?? this.id,
      title: title ?? this.title,
      department: department ?? this.department,
      main: main ?? this.main,
    );
  }

  PostPersonModel copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? title,
    Wrapped<BaseModel?>? department,
    Wrapped<bool?>? main,
  }) {
    return PostPersonModel(
      id: (id != null ? id.value : this.id),
      title: (title != null ? title.value : this.title),
      department: (department != null ? department.value : this.department),
      main: (main != null ? main.value : this.main),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class StudentGroupPersonModel {
  const StudentGroupPersonModel({this.id, this.title, this.department});

  factory StudentGroupPersonModel.fromJson(Map<String, dynamic> json) =>
      _$StudentGroupPersonModelFromJson(json);

  static const toJsonFactory = _$StudentGroupPersonModelToJson;
  Map<String, dynamic> toJson() => _$StudentGroupPersonModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'department')
  final BaseModel? department;
  static const fromJsonFactory = _$StudentGroupPersonModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is StudentGroupPersonModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality().equals(
                  other.department,
                  department,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(department) ^
      runtimeType.hashCode;
}

extension $StudentGroupPersonModelExtension on StudentGroupPersonModel {
  StudentGroupPersonModel copyWith({
    int? id,
    String? title,
    BaseModel? department,
  }) {
    return StudentGroupPersonModel(
      id: id ?? this.id,
      title: title ?? this.title,
      department: department ?? this.department,
    );
  }

  StudentGroupPersonModel copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? title,
    Wrapped<BaseModel?>? department,
  }) {
    return StudentGroupPersonModel(
      id: (id != null ? id.value : this.id),
      title: (title != null ? title.value : this.title),
      department: (department != null ? department.value : this.department),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class StudentModel {
  const StudentModel({
    required this.id,
    required this.guid,
    required this.fio,
    required this.lastName,
    required this.firstName,
    this.middleName,
    this.personNum,
    required this.email,
    required this.groupName,
    required this.groupId,
    required this.department,
    required this.departmentId,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);

  static const toJsonFactory = _$StudentModelToJson;
  Map<String, dynamic> toJson() => _$StudentModelToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'guid')
  final String guid;
  @JsonKey(name: 'fio')
  final String fio;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'middleName')
  final String? middleName;
  @JsonKey(name: 'personNum')
  final String? personNum;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'groupName')
  final String groupName;
  @JsonKey(name: 'groupId')
  final int groupId;
  @JsonKey(name: 'department')
  final String department;
  @JsonKey(name: 'departmentId')
  final int departmentId;
  static const fromJsonFactory = _$StudentModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is StudentModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.fio, fio) ||
                const DeepCollectionEquality().equals(other.fio, fio)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality().equals(
                  other.lastName,
                  lastName,
                )) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(
                  other.firstName,
                  firstName,
                )) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality().equals(
                  other.middleName,
                  middleName,
                )) &&
            (identical(other.personNum, personNum) ||
                const DeepCollectionEquality().equals(
                  other.personNum,
                  personNum,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality().equals(
                  other.groupName,
                  groupName,
                )) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality().equals(
                  other.groupId,
                  groupId,
                )) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality().equals(
                  other.department,
                  department,
                )) &&
            (identical(other.departmentId, departmentId) ||
                const DeepCollectionEquality().equals(
                  other.departmentId,
                  departmentId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(fio) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(personNum) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(department) ^
      const DeepCollectionEquality().hash(departmentId) ^
      runtimeType.hashCode;
}

extension $StudentModelExtension on StudentModel {
  StudentModel copyWith({
    int? id,
    String? guid,
    String? fio,
    String? lastName,
    String? firstName,
    String? middleName,
    String? personNum,
    String? email,
    String? groupName,
    int? groupId,
    String? department,
    int? departmentId,
  }) {
    return StudentModel(
      id: id ?? this.id,
      guid: guid ?? this.guid,
      fio: fio ?? this.fio,
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      personNum: personNum ?? this.personNum,
      email: email ?? this.email,
      groupName: groupName ?? this.groupName,
      groupId: groupId ?? this.groupId,
      department: department ?? this.department,
      departmentId: departmentId ?? this.departmentId,
    );
  }

  StudentModel copyWithWrapped({
    Wrapped<int>? id,
    Wrapped<String>? guid,
    Wrapped<String>? fio,
    Wrapped<String>? lastName,
    Wrapped<String>? firstName,
    Wrapped<String?>? middleName,
    Wrapped<String?>? personNum,
    Wrapped<String>? email,
    Wrapped<String>? groupName,
    Wrapped<int>? groupId,
    Wrapped<String>? department,
    Wrapped<int>? departmentId,
  }) {
    return StudentModel(
      id: (id != null ? id.value : this.id),
      guid: (guid != null ? guid.value : this.guid),
      fio: (fio != null ? fio.value : this.fio),
      lastName: (lastName != null ? lastName.value : this.lastName),
      firstName: (firstName != null ? firstName.value : this.firstName),
      middleName: (middleName != null ? middleName.value : this.middleName),
      personNum: (personNum != null ? personNum.value : this.personNum),
      email: (email != null ? email.value : this.email),
      groupName: (groupName != null ? groupName.value : this.groupName),
      groupId: (groupId != null ? groupId.value : this.groupId),
      department: (department != null ? department.value : this.department),
      departmentId: (departmentId != null
          ? departmentId.value
          : this.departmentId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeModel {
  const EmployeeModel({
    required this.id,
    required this.guid,
    required this.fio,
    required this.lastName,
    required this.firstName,
    this.middleName,
    this.personNum,
    required this.email,
    this.posts,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);

  static const toJsonFactory = _$EmployeeModelToJson;
  Map<String, dynamic> toJson() => _$EmployeeModelToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'guid')
  final String guid;
  @JsonKey(name: 'fio')
  final String fio;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'middleName')
  final String? middleName;
  @JsonKey(name: 'personNum')
  final String? personNum;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'posts', defaultValue: <PostPersonModel>[])
  final List<PostPersonModel>? posts;
  static const fromJsonFactory = _$EmployeeModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.fio, fio) ||
                const DeepCollectionEquality().equals(other.fio, fio)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality().equals(
                  other.lastName,
                  lastName,
                )) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(
                  other.firstName,
                  firstName,
                )) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality().equals(
                  other.middleName,
                  middleName,
                )) &&
            (identical(other.personNum, personNum) ||
                const DeepCollectionEquality().equals(
                  other.personNum,
                  personNum,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(fio) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(personNum) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(posts) ^
      runtimeType.hashCode;
}

extension $EmployeeModelExtension on EmployeeModel {
  EmployeeModel copyWith({
    int? id,
    String? guid,
    String? fio,
    String? lastName,
    String? firstName,
    String? middleName,
    String? personNum,
    String? email,
    List<PostPersonModel>? posts,
  }) {
    return EmployeeModel(
      id: id ?? this.id,
      guid: guid ?? this.guid,
      fio: fio ?? this.fio,
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      personNum: personNum ?? this.personNum,
      email: email ?? this.email,
      posts: posts ?? this.posts,
    );
  }

  EmployeeModel copyWithWrapped({
    Wrapped<int>? id,
    Wrapped<String>? guid,
    Wrapped<String>? fio,
    Wrapped<String>? lastName,
    Wrapped<String>? firstName,
    Wrapped<String?>? middleName,
    Wrapped<String?>? personNum,
    Wrapped<String>? email,
    Wrapped<List<PostPersonModel>?>? posts,
  }) {
    return EmployeeModel(
      id: (id != null ? id.value : this.id),
      guid: (guid != null ? guid.value : this.guid),
      fio: (fio != null ? fio.value : this.fio),
      lastName: (lastName != null ? lastName.value : this.lastName),
      firstName: (firstName != null ? firstName.value : this.firstName),
      middleName: (middleName != null ? middleName.value : this.middleName),
      personNum: (personNum != null ? personNum.value : this.personNum),
      email: (email != null ? email.value : this.email),
      posts: (posts != null ? posts.value : this.posts),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MarkModel {
  const MarkModel({
    this.formControlShort,
    this.formControl,
    this.discipline,
    this.course,
    this.term,
    this.teachLastname,
    this.teachFirstname,
    this.teachMiddlename,
    this.year,
    this.mark,
    this.principalId,
    this.username,
  });

  factory MarkModel.fromJson(Map<String, dynamic> json) =>
      _$MarkModelFromJson(json);

  static const toJsonFactory = _$MarkModelToJson;
  Map<String, dynamic> toJson() => _$MarkModelToJson(this);

  @JsonKey(name: 'formControlShort')
  final String? formControlShort;
  @JsonKey(name: 'formControl')
  final String? formControl;
  @JsonKey(name: 'discipline')
  final String? discipline;
  @JsonKey(name: 'course')
  final String? course;
  @JsonKey(name: 'term')
  final String? term;
  @JsonKey(name: 'teachLastname')
  final String? teachLastname;
  @JsonKey(name: 'teachFirstname')
  final String? teachFirstname;
  @JsonKey(name: 'teachMiddlename')
  final String? teachMiddlename;
  @JsonKey(name: 'year')
  final String? year;
  @JsonKey(name: 'mark')
  final String? mark;
  @JsonKey(name: 'principalId')
  final int? principalId;
  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$MarkModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MarkModel &&
            (identical(other.formControlShort, formControlShort) ||
                const DeepCollectionEquality().equals(
                  other.formControlShort,
                  formControlShort,
                )) &&
            (identical(other.formControl, formControl) ||
                const DeepCollectionEquality().equals(
                  other.formControl,
                  formControl,
                )) &&
            (identical(other.discipline, discipline) ||
                const DeepCollectionEquality().equals(
                  other.discipline,
                  discipline,
                )) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)) &&
            (identical(other.teachLastname, teachLastname) ||
                const DeepCollectionEquality().equals(
                  other.teachLastname,
                  teachLastname,
                )) &&
            (identical(other.teachFirstname, teachFirstname) ||
                const DeepCollectionEquality().equals(
                  other.teachFirstname,
                  teachFirstname,
                )) &&
            (identical(other.teachMiddlename, teachMiddlename) ||
                const DeepCollectionEquality().equals(
                  other.teachMiddlename,
                  teachMiddlename,
                )) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.mark, mark) ||
                const DeepCollectionEquality().equals(other.mark, mark)) &&
            (identical(other.principalId, principalId) ||
                const DeepCollectionEquality().equals(
                  other.principalId,
                  principalId,
                )) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality().equals(
                  other.username,
                  username,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(formControlShort) ^
      const DeepCollectionEquality().hash(formControl) ^
      const DeepCollectionEquality().hash(discipline) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(term) ^
      const DeepCollectionEquality().hash(teachLastname) ^
      const DeepCollectionEquality().hash(teachFirstname) ^
      const DeepCollectionEquality().hash(teachMiddlename) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(mark) ^
      const DeepCollectionEquality().hash(principalId) ^
      const DeepCollectionEquality().hash(username) ^
      runtimeType.hashCode;
}

extension $MarkModelExtension on MarkModel {
  MarkModel copyWith({
    String? formControlShort,
    String? formControl,
    String? discipline,
    String? course,
    String? term,
    String? teachLastname,
    String? teachFirstname,
    String? teachMiddlename,
    String? year,
    String? mark,
    int? principalId,
    String? username,
  }) {
    return MarkModel(
      formControlShort: formControlShort ?? this.formControlShort,
      formControl: formControl ?? this.formControl,
      discipline: discipline ?? this.discipline,
      course: course ?? this.course,
      term: term ?? this.term,
      teachLastname: teachLastname ?? this.teachLastname,
      teachFirstname: teachFirstname ?? this.teachFirstname,
      teachMiddlename: teachMiddlename ?? this.teachMiddlename,
      year: year ?? this.year,
      mark: mark ?? this.mark,
      principalId: principalId ?? this.principalId,
      username: username ?? this.username,
    );
  }

  MarkModel copyWithWrapped({
    Wrapped<String?>? formControlShort,
    Wrapped<String?>? formControl,
    Wrapped<String?>? discipline,
    Wrapped<String?>? course,
    Wrapped<String?>? term,
    Wrapped<String?>? teachLastname,
    Wrapped<String?>? teachFirstname,
    Wrapped<String?>? teachMiddlename,
    Wrapped<String?>? year,
    Wrapped<String?>? mark,
    Wrapped<int?>? principalId,
    Wrapped<String?>? username,
  }) {
    return MarkModel(
      formControlShort: (formControlShort != null
          ? formControlShort.value
          : this.formControlShort),
      formControl: (formControl != null ? formControl.value : this.formControl),
      discipline: (discipline != null ? discipline.value : this.discipline),
      course: (course != null ? course.value : this.course),
      term: (term != null ? term.value : this.term),
      teachLastname: (teachLastname != null
          ? teachLastname.value
          : this.teachLastname),
      teachFirstname: (teachFirstname != null
          ? teachFirstname.value
          : this.teachFirstname),
      teachMiddlename: (teachMiddlename != null
          ? teachMiddlename.value
          : this.teachMiddlename),
      year: (year != null ? year.value : this.year),
      mark: (mark != null ? mark.value : this.mark),
      principalId: (principalId != null ? principalId.value : this.principalId),
      username: (username != null ? username.value : this.username),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class StudentGroupExtModel {
  const StudentGroupExtModel({
    this.id,
    this.title,
    this.course,
    this.faculty,
    this.chair,
  });

  factory StudentGroupExtModel.fromJson(Map<String, dynamic> json) =>
      _$StudentGroupExtModelFromJson(json);

  static const toJsonFactory = _$StudentGroupExtModelToJson;
  Map<String, dynamic> toJson() => _$StudentGroupExtModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'course')
  final int? course;
  @JsonKey(name: 'faculty')
  final BaseModel? faculty;
  @JsonKey(name: 'chair')
  final BaseModel? chair;
  static const fromJsonFactory = _$StudentGroupExtModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is StudentGroupExtModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.faculty, faculty) ||
                const DeepCollectionEquality().equals(
                  other.faculty,
                  faculty,
                )) &&
            (identical(other.chair, chair) ||
                const DeepCollectionEquality().equals(other.chair, chair)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(faculty) ^
      const DeepCollectionEquality().hash(chair) ^
      runtimeType.hashCode;
}

extension $StudentGroupExtModelExtension on StudentGroupExtModel {
  StudentGroupExtModel copyWith({
    int? id,
    String? title,
    int? course,
    BaseModel? faculty,
    BaseModel? chair,
  }) {
    return StudentGroupExtModel(
      id: id ?? this.id,
      title: title ?? this.title,
      course: course ?? this.course,
      faculty: faculty ?? this.faculty,
      chair: chair ?? this.chair,
    );
  }

  StudentGroupExtModel copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? title,
    Wrapped<int?>? course,
    Wrapped<BaseModel?>? faculty,
    Wrapped<BaseModel?>? chair,
  }) {
    return StudentGroupExtModel(
      id: (id != null ? id.value : this.id),
      title: (title != null ? title.value : this.title),
      course: (course != null ? course.value : this.course),
      faculty: (faculty != null ? faculty.value : this.faculty),
      chair: (chair != null ? chair.value : this.chair),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class StudentGroupModel {
  const StudentGroupModel({this.id, this.title});

  factory StudentGroupModel.fromJson(Map<String, dynamic> json) =>
      _$StudentGroupModelFromJson(json);

  static const toJsonFactory = _$StudentGroupModelToJson;
  Map<String, dynamic> toJson() => _$StudentGroupModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'title')
  final String? title;
  static const fromJsonFactory = _$StudentGroupModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is StudentGroupModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      runtimeType.hashCode;
}

extension $StudentGroupModelExtension on StudentGroupModel {
  StudentGroupModel copyWith({int? id, String? title}) {
    return StudentGroupModel(id: id ?? this.id, title: title ?? this.title);
  }

  StudentGroupModel copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? title,
  }) {
    return StudentGroupModel(
      id: (id != null ? id.value : this.id),
      title: (title != null ? title.value : this.title),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DepartmentModel {
  const DepartmentModel({
    this.id,
    this.parentId,
    this.title,
    this.shortTitle,
    this.typeCode,
    this.typeTitle,
  });

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);

  static const toJsonFactory = _$DepartmentModelToJson;
  Map<String, dynamic> toJson() => _$DepartmentModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'parentId')
  final int? parentId;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'shortTitle')
  final String? shortTitle;
  @JsonKey(name: 'typeCode')
  final String? typeCode;
  @JsonKey(name: 'typeTitle')
  final String? typeTitle;
  static const fromJsonFactory = _$DepartmentModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DepartmentModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality().equals(
                  other.parentId,
                  parentId,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.shortTitle, shortTitle) ||
                const DeepCollectionEquality().equals(
                  other.shortTitle,
                  shortTitle,
                )) &&
            (identical(other.typeCode, typeCode) ||
                const DeepCollectionEquality().equals(
                  other.typeCode,
                  typeCode,
                )) &&
            (identical(other.typeTitle, typeTitle) ||
                const DeepCollectionEquality().equals(
                  other.typeTitle,
                  typeTitle,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(shortTitle) ^
      const DeepCollectionEquality().hash(typeCode) ^
      const DeepCollectionEquality().hash(typeTitle) ^
      runtimeType.hashCode;
}

extension $DepartmentModelExtension on DepartmentModel {
  DepartmentModel copyWith({
    int? id,
    int? parentId,
    String? title,
    String? shortTitle,
    String? typeCode,
    String? typeTitle,
  }) {
    return DepartmentModel(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      title: title ?? this.title,
      shortTitle: shortTitle ?? this.shortTitle,
      typeCode: typeCode ?? this.typeCode,
      typeTitle: typeTitle ?? this.typeTitle,
    );
  }

  DepartmentModel copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<int?>? parentId,
    Wrapped<String?>? title,
    Wrapped<String?>? shortTitle,
    Wrapped<String?>? typeCode,
    Wrapped<String?>? typeTitle,
  }) {
    return DepartmentModel(
      id: (id != null ? id.value : this.id),
      parentId: (parentId != null ? parentId.value : this.parentId),
      title: (title != null ? title.value : this.title),
      shortTitle: (shortTitle != null ? shortTitle.value : this.shortTitle),
      typeCode: (typeCode != null ? typeCode.value : this.typeCode),
      typeTitle: (typeTitle != null ? typeTitle.value : this.typeTitle),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TreeModelDepartmentModel {
  const TreeModelDepartmentModel({this.node, this.items});

  factory TreeModelDepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$TreeModelDepartmentModelFromJson(json);

  static const toJsonFactory = _$TreeModelDepartmentModelToJson;
  Map<String, dynamic> toJson() => _$TreeModelDepartmentModelToJson(this);

  @JsonKey(name: 'node')
  final DepartmentModel? node;
  @JsonKey(name: 'items', defaultValue: <TreeModelDepartmentModel>[])
  final List<TreeModelDepartmentModel>? items;
  static const fromJsonFactory = _$TreeModelDepartmentModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TreeModelDepartmentModel &&
            (identical(other.node, node) ||
                const DeepCollectionEquality().equals(other.node, node)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(node) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $TreeModelDepartmentModelExtension on TreeModelDepartmentModel {
  TreeModelDepartmentModel copyWith({
    DepartmentModel? node,
    List<TreeModelDepartmentModel>? items,
  }) {
    return TreeModelDepartmentModel(
      node: node ?? this.node,
      items: items ?? this.items,
    );
  }

  TreeModelDepartmentModel copyWithWrapped({
    Wrapped<DepartmentModel?>? node,
    Wrapped<List<TreeModelDepartmentModel>?>? items,
  }) {
    return TreeModelDepartmentModel(
      node: (node != null ? node.value : this.node),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SemesterModel {
  const SemesterModel({this.id, this.title});

  factory SemesterModel.fromJson(Map<String, dynamic> json) =>
      _$SemesterModelFromJson(json);

  static const toJsonFactory = _$SemesterModelToJson;
  Map<String, dynamic> toJson() => _$SemesterModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'title')
  final String? title;
  static const fromJsonFactory = _$SemesterModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SemesterModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      runtimeType.hashCode;
}

extension $SemesterModelExtension on SemesterModel {
  SemesterModel copyWith({int? id, String? title}) {
    return SemesterModel(id: id ?? this.id, title: title ?? this.title);
  }

  SemesterModel copyWithWrapped({Wrapped<int?>? id, Wrapped<String?>? title}) {
    return SemesterModel(
      id: (id != null ? id.value : this.id),
      title: (title != null ? title.value : this.title),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AuditoriumModel {
  const AuditoriumModel({
    this.id,
    this.name,
    this.number,
    this.buildName,
    this.buildId,
    this.height,
    this.length,
    this.width,
  });

  factory AuditoriumModel.fromJson(Map<String, dynamic> json) =>
      _$AuditoriumModelFromJson(json);

  static const toJsonFactory = _$AuditoriumModelToJson;
  Map<String, dynamic> toJson() => _$AuditoriumModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'number')
  final String? number;
  @JsonKey(name: 'buildName')
  final String? buildName;
  @JsonKey(name: 'buildId')
  final int? buildId;
  @JsonKey(name: 'height')
  final double? height;
  @JsonKey(name: 'length')
  final double? length;
  @JsonKey(name: 'width')
  final double? width;
  static const fromJsonFactory = _$AuditoriumModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AuditoriumModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.buildName, buildName) ||
                const DeepCollectionEquality().equals(
                  other.buildName,
                  buildName,
                )) &&
            (identical(other.buildId, buildId) ||
                const DeepCollectionEquality().equals(
                  other.buildId,
                  buildId,
                )) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(buildName) ^
      const DeepCollectionEquality().hash(buildId) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(width) ^
      runtimeType.hashCode;
}

extension $AuditoriumModelExtension on AuditoriumModel {
  AuditoriumModel copyWith({
    int? id,
    String? name,
    String? number,
    String? buildName,
    int? buildId,
    double? height,
    double? length,
    double? width,
  }) {
    return AuditoriumModel(
      id: id ?? this.id,
      name: name ?? this.name,
      number: number ?? this.number,
      buildName: buildName ?? this.buildName,
      buildId: buildId ?? this.buildId,
      height: height ?? this.height,
      length: length ?? this.length,
      width: width ?? this.width,
    );
  }

  AuditoriumModel copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? name,
    Wrapped<String?>? number,
    Wrapped<String?>? buildName,
    Wrapped<int?>? buildId,
    Wrapped<double?>? height,
    Wrapped<double?>? length,
    Wrapped<double?>? width,
  }) {
    return AuditoriumModel(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      number: (number != null ? number.value : this.number),
      buildName: (buildName != null ? buildName.value : this.buildName),
      buildId: (buildId != null ? buildId.value : this.buildId),
      height: (height != null ? height.value : this.height),
      length: (length != null ? length.value : this.length),
      width: (width != null ? width.value : this.width),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Link {
  const Link({
    this.href,
    this.hreflang,
    this.title,
    this.type,
    this.deprecation,
    this.profile,
    this.name,
    this.templated,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  static const toJsonFactory = _$LinkToJson;
  Map<String, dynamic> toJson() => _$LinkToJson(this);

  @JsonKey(name: 'href')
  final String? href;
  @JsonKey(name: 'hreflang')
  final String? hreflang;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'deprecation')
  final String? deprecation;
  @JsonKey(name: 'profile')
  final String? profile;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'templated')
  final bool? templated;
  static const fromJsonFactory = _$LinkFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Link &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.hreflang, hreflang) ||
                const DeepCollectionEquality().equals(
                  other.hreflang,
                  hreflang,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.deprecation, deprecation) ||
                const DeepCollectionEquality().equals(
                  other.deprecation,
                  deprecation,
                )) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(
                  other.profile,
                  profile,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.templated, templated) ||
                const DeepCollectionEquality().equals(
                  other.templated,
                  templated,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(hreflang) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(deprecation) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(templated) ^
      runtimeType.hashCode;
}

extension $LinkExtension on Link {
  Link copyWith({
    String? href,
    String? hreflang,
    String? title,
    String? type,
    String? deprecation,
    String? profile,
    String? name,
    bool? templated,
  }) {
    return Link(
      href: href ?? this.href,
      hreflang: hreflang ?? this.hreflang,
      title: title ?? this.title,
      type: type ?? this.type,
      deprecation: deprecation ?? this.deprecation,
      profile: profile ?? this.profile,
      name: name ?? this.name,
      templated: templated ?? this.templated,
    );
  }

  Link copyWithWrapped({
    Wrapped<String?>? href,
    Wrapped<String?>? hreflang,
    Wrapped<String?>? title,
    Wrapped<String?>? type,
    Wrapped<String?>? deprecation,
    Wrapped<String?>? profile,
    Wrapped<String?>? name,
    Wrapped<bool?>? templated,
  }) {
    return Link(
      href: (href != null ? href.value : this.href),
      hreflang: (hreflang != null ? hreflang.value : this.hreflang),
      title: (title != null ? title.value : this.title),
      type: (type != null ? type.value : this.type),
      deprecation: (deprecation != null ? deprecation.value : this.deprecation),
      profile: (profile != null ? profile.value : this.profile),
      name: (name != null ? name.value : this.name),
      templated: (templated != null ? templated.value : this.templated),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PagedModelEntityModelNotificationEntity$Embedded {
  const PagedModelEntityModelNotificationEntity$Embedded({
    this.notificationEntities,
  });

  factory PagedModelEntityModelNotificationEntity$Embedded.fromJson(
    Map<String, dynamic> json,
  ) => _$PagedModelEntityModelNotificationEntity$EmbeddedFromJson(json);

  static const toJsonFactory =
      _$PagedModelEntityModelNotificationEntity$EmbeddedToJson;
  Map<String, dynamic> toJson() =>
      _$PagedModelEntityModelNotificationEntity$EmbeddedToJson(this);

  @JsonKey(
    name: 'notificationEntities',
    defaultValue: <EntityModelNotificationEntity>[],
  )
  final List<EntityModelNotificationEntity>? notificationEntities;
  static const fromJsonFactory =
      _$PagedModelEntityModelNotificationEntity$EmbeddedFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PagedModelEntityModelNotificationEntity$Embedded &&
            (identical(other.notificationEntities, notificationEntities) ||
                const DeepCollectionEquality().equals(
                  other.notificationEntities,
                  notificationEntities,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(notificationEntities) ^
      runtimeType.hashCode;
}

extension $PagedModelEntityModelNotificationEntity$EmbeddedExtension
    on PagedModelEntityModelNotificationEntity$Embedded {
  PagedModelEntityModelNotificationEntity$Embedded copyWith({
    List<EntityModelNotificationEntity>? notificationEntities,
  }) {
    return PagedModelEntityModelNotificationEntity$Embedded(
      notificationEntities: notificationEntities ?? this.notificationEntities,
    );
  }

  PagedModelEntityModelNotificationEntity$Embedded copyWithWrapped({
    Wrapped<List<EntityModelNotificationEntity>?>? notificationEntities,
  }) {
    return PagedModelEntityModelNotificationEntity$Embedded(
      notificationEntities: (notificationEntities != null
          ? notificationEntities.value
          : this.notificationEntities),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CollectionModelEntityModelNotificationEntity$Embedded {
  const CollectionModelEntityModelNotificationEntity$Embedded({
    this.notificationEntities,
  });

  factory CollectionModelEntityModelNotificationEntity$Embedded.fromJson(
    Map<String, dynamic> json,
  ) => _$CollectionModelEntityModelNotificationEntity$EmbeddedFromJson(json);

  static const toJsonFactory =
      _$CollectionModelEntityModelNotificationEntity$EmbeddedToJson;
  Map<String, dynamic> toJson() =>
      _$CollectionModelEntityModelNotificationEntity$EmbeddedToJson(this);

  @JsonKey(
    name: 'notificationEntities',
    defaultValue: <EntityModelNotificationEntity>[],
  )
  final List<EntityModelNotificationEntity>? notificationEntities;
  static const fromJsonFactory =
      _$CollectionModelEntityModelNotificationEntity$EmbeddedFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CollectionModelEntityModelNotificationEntity$Embedded &&
            (identical(other.notificationEntities, notificationEntities) ||
                const DeepCollectionEquality().equals(
                  other.notificationEntities,
                  notificationEntities,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(notificationEntities) ^
      runtimeType.hashCode;
}

extension $CollectionModelEntityModelNotificationEntity$EmbeddedExtension
    on CollectionModelEntityModelNotificationEntity$Embedded {
  CollectionModelEntityModelNotificationEntity$Embedded copyWith({
    List<EntityModelNotificationEntity>? notificationEntities,
  }) {
    return CollectionModelEntityModelNotificationEntity$Embedded(
      notificationEntities: notificationEntities ?? this.notificationEntities,
    );
  }

  CollectionModelEntityModelNotificationEntity$Embedded copyWithWrapped({
    Wrapped<List<EntityModelNotificationEntity>?>? notificationEntities,
  }) {
    return CollectionModelEntityModelNotificationEntity$Embedded(
      notificationEntities: (notificationEntities != null
          ? notificationEntities.value
          : this.notificationEntities),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PagedModelEntityModelUserEntity$Embedded {
  const PagedModelEntityModelUserEntity$Embedded({this.userEntities});

  factory PagedModelEntityModelUserEntity$Embedded.fromJson(
    Map<String, dynamic> json,
  ) => _$PagedModelEntityModelUserEntity$EmbeddedFromJson(json);

  static const toJsonFactory = _$PagedModelEntityModelUserEntity$EmbeddedToJson;
  Map<String, dynamic> toJson() =>
      _$PagedModelEntityModelUserEntity$EmbeddedToJson(this);

  @JsonKey(name: 'userEntities', defaultValue: <EntityModelUserEntity>[])
  final List<EntityModelUserEntity>? userEntities;
  static const fromJsonFactory =
      _$PagedModelEntityModelUserEntity$EmbeddedFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PagedModelEntityModelUserEntity$Embedded &&
            (identical(other.userEntities, userEntities) ||
                const DeepCollectionEquality().equals(
                  other.userEntities,
                  userEntities,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userEntities) ^ runtimeType.hashCode;
}

extension $PagedModelEntityModelUserEntity$EmbeddedExtension
    on PagedModelEntityModelUserEntity$Embedded {
  PagedModelEntityModelUserEntity$Embedded copyWith({
    List<EntityModelUserEntity>? userEntities,
  }) {
    return PagedModelEntityModelUserEntity$Embedded(
      userEntities: userEntities ?? this.userEntities,
    );
  }

  PagedModelEntityModelUserEntity$Embedded copyWithWrapped({
    Wrapped<List<EntityModelUserEntity>?>? userEntities,
  }) {
    return PagedModelEntityModelUserEntity$Embedded(
      userEntities: (userEntities != null
          ? userEntities.value
          : this.userEntities),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CollectionModelRoleEntity$Embedded {
  const CollectionModelRoleEntity$Embedded({this.roleEntities});

  factory CollectionModelRoleEntity$Embedded.fromJson(
    Map<String, dynamic> json,
  ) => _$CollectionModelRoleEntity$EmbeddedFromJson(json);

  static const toJsonFactory = _$CollectionModelRoleEntity$EmbeddedToJson;
  Map<String, dynamic> toJson() =>
      _$CollectionModelRoleEntity$EmbeddedToJson(this);

  @JsonKey(name: 'roleEntities', defaultValue: <RoleEntityResponse>[])
  final List<RoleEntityResponse>? roleEntities;
  static const fromJsonFactory = _$CollectionModelRoleEntity$EmbeddedFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CollectionModelRoleEntity$Embedded &&
            (identical(other.roleEntities, roleEntities) ||
                const DeepCollectionEquality().equals(
                  other.roleEntities,
                  roleEntities,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roleEntities) ^ runtimeType.hashCode;
}

extension $CollectionModelRoleEntity$EmbeddedExtension
    on CollectionModelRoleEntity$Embedded {
  CollectionModelRoleEntity$Embedded copyWith({
    List<RoleEntityResponse>? roleEntities,
  }) {
    return CollectionModelRoleEntity$Embedded(
      roleEntities: roleEntities ?? this.roleEntities,
    );
  }

  CollectionModelRoleEntity$Embedded copyWithWrapped({
    Wrapped<List<RoleEntityResponse>?>? roleEntities,
  }) {
    return CollectionModelRoleEntity$Embedded(
      roleEntities: (roleEntities != null
          ? roleEntities.value
          : this.roleEntities),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CollectionModelObject$Embedded {
  const CollectionModelObject$Embedded({this.objects});

  factory CollectionModelObject$Embedded.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelObject$EmbeddedFromJson(json);

  static const toJsonFactory = _$CollectionModelObject$EmbeddedToJson;
  Map<String, dynamic> toJson() => _$CollectionModelObject$EmbeddedToJson(this);

  @JsonKey(name: 'objects', defaultValue: <Object>[])
  final List<Object>? objects;
  static const fromJsonFactory = _$CollectionModelObject$EmbeddedFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CollectionModelObject$Embedded &&
            (identical(other.objects, objects) ||
                const DeepCollectionEquality().equals(other.objects, objects)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(objects) ^ runtimeType.hashCode;
}

extension $CollectionModelObject$EmbeddedExtension
    on CollectionModelObject$Embedded {
  CollectionModelObject$Embedded copyWith({List<Object>? objects}) {
    return CollectionModelObject$Embedded(objects: objects ?? this.objects);
  }

  CollectionModelObject$Embedded copyWithWrapped({
    Wrapped<List<Object>?>? objects,
  }) {
    return CollectionModelObject$Embedded(
      objects: (objects != null ? objects.value : this.objects),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PagedModelEntityModelParamsTimeTable$Embedded {
  const PagedModelEntityModelParamsTimeTable$Embedded({this.paramsTimeTables});

  factory PagedModelEntityModelParamsTimeTable$Embedded.fromJson(
    Map<String, dynamic> json,
  ) => _$PagedModelEntityModelParamsTimeTable$EmbeddedFromJson(json);

  static const toJsonFactory =
      _$PagedModelEntityModelParamsTimeTable$EmbeddedToJson;
  Map<String, dynamic> toJson() =>
      _$PagedModelEntityModelParamsTimeTable$EmbeddedToJson(this);

  @JsonKey(
    name: 'paramsTimeTables',
    defaultValue: <EntityModelParamsTimeTable>[],
  )
  final List<EntityModelParamsTimeTable>? paramsTimeTables;
  static const fromJsonFactory =
      _$PagedModelEntityModelParamsTimeTable$EmbeddedFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PagedModelEntityModelParamsTimeTable$Embedded &&
            (identical(other.paramsTimeTables, paramsTimeTables) ||
                const DeepCollectionEquality().equals(
                  other.paramsTimeTables,
                  paramsTimeTables,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(paramsTimeTables) ^
      runtimeType.hashCode;
}

extension $PagedModelEntityModelParamsTimeTable$EmbeddedExtension
    on PagedModelEntityModelParamsTimeTable$Embedded {
  PagedModelEntityModelParamsTimeTable$Embedded copyWith({
    List<EntityModelParamsTimeTable>? paramsTimeTables,
  }) {
    return PagedModelEntityModelParamsTimeTable$Embedded(
      paramsTimeTables: paramsTimeTables ?? this.paramsTimeTables,
    );
  }

  PagedModelEntityModelParamsTimeTable$Embedded copyWithWrapped({
    Wrapped<List<EntityModelParamsTimeTable>?>? paramsTimeTables,
  }) {
    return PagedModelEntityModelParamsTimeTable$Embedded(
      paramsTimeTables: (paramsTimeTables != null
          ? paramsTimeTables.value
          : this.paramsTimeTables),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PagedModelEntityModelRoleEntity$Embedded {
  const PagedModelEntityModelRoleEntity$Embedded({this.roleEntities});

  factory PagedModelEntityModelRoleEntity$Embedded.fromJson(
    Map<String, dynamic> json,
  ) => _$PagedModelEntityModelRoleEntity$EmbeddedFromJson(json);

  static const toJsonFactory = _$PagedModelEntityModelRoleEntity$EmbeddedToJson;
  Map<String, dynamic> toJson() =>
      _$PagedModelEntityModelRoleEntity$EmbeddedToJson(this);

  @JsonKey(name: 'roleEntities', defaultValue: <EntityModelRoleEntity>[])
  final List<EntityModelRoleEntity>? roleEntities;
  static const fromJsonFactory =
      _$PagedModelEntityModelRoleEntity$EmbeddedFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PagedModelEntityModelRoleEntity$Embedded &&
            (identical(other.roleEntities, roleEntities) ||
                const DeepCollectionEquality().equals(
                  other.roleEntities,
                  roleEntities,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roleEntities) ^ runtimeType.hashCode;
}

extension $PagedModelEntityModelRoleEntity$EmbeddedExtension
    on PagedModelEntityModelRoleEntity$Embedded {
  PagedModelEntityModelRoleEntity$Embedded copyWith({
    List<EntityModelRoleEntity>? roleEntities,
  }) {
    return PagedModelEntityModelRoleEntity$Embedded(
      roleEntities: roleEntities ?? this.roleEntities,
    );
  }

  PagedModelEntityModelRoleEntity$Embedded copyWithWrapped({
    Wrapped<List<EntityModelRoleEntity>?>? roleEntities,
  }) {
    return PagedModelEntityModelRoleEntity$Embedded(
      roleEntities: (roleEntities != null
          ? roleEntities.value
          : this.roleEntities),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CollectionModelEntityModelRoleEntity$Embedded {
  const CollectionModelEntityModelRoleEntity$Embedded({this.roleEntities});

  factory CollectionModelEntityModelRoleEntity$Embedded.fromJson(
    Map<String, dynamic> json,
  ) => _$CollectionModelEntityModelRoleEntity$EmbeddedFromJson(json);

  static const toJsonFactory =
      _$CollectionModelEntityModelRoleEntity$EmbeddedToJson;
  Map<String, dynamic> toJson() =>
      _$CollectionModelEntityModelRoleEntity$EmbeddedToJson(this);

  @JsonKey(name: 'roleEntities', defaultValue: <EntityModelRoleEntity>[])
  final List<EntityModelRoleEntity>? roleEntities;
  static const fromJsonFactory =
      _$CollectionModelEntityModelRoleEntity$EmbeddedFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CollectionModelEntityModelRoleEntity$Embedded &&
            (identical(other.roleEntities, roleEntities) ||
                const DeepCollectionEquality().equals(
                  other.roleEntities,
                  roleEntities,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roleEntities) ^ runtimeType.hashCode;
}

extension $CollectionModelEntityModelRoleEntity$EmbeddedExtension
    on CollectionModelEntityModelRoleEntity$Embedded {
  CollectionModelEntityModelRoleEntity$Embedded copyWith({
    List<EntityModelRoleEntity>? roleEntities,
  }) {
    return CollectionModelEntityModelRoleEntity$Embedded(
      roleEntities: roleEntities ?? this.roleEntities,
    );
  }

  CollectionModelEntityModelRoleEntity$Embedded copyWithWrapped({
    Wrapped<List<EntityModelRoleEntity>?>? roleEntities,
  }) {
    return CollectionModelEntityModelRoleEntity$Embedded(
      roleEntities: (roleEntities != null
          ? roleEntities.value
          : this.roleEntities),
    );
  }
}

String? entityModelNotificationEntityTypeNullableToJson(
  enums.EntityModelNotificationEntityType? entityModelNotificationEntityType,
) {
  return entityModelNotificationEntityType?.value;
}

String? entityModelNotificationEntityTypeToJson(
  enums.EntityModelNotificationEntityType entityModelNotificationEntityType,
) {
  return entityModelNotificationEntityType.value;
}

enums.EntityModelNotificationEntityType
entityModelNotificationEntityTypeFromJson(
  Object? entityModelNotificationEntityType, [
  enums.EntityModelNotificationEntityType? defaultValue,
]) {
  return enums.EntityModelNotificationEntityType.values.firstWhereOrNull(
        (e) => e.value == entityModelNotificationEntityType,
      ) ??
      defaultValue ??
      enums.EntityModelNotificationEntityType.swaggerGeneratedUnknown;
}

enums.EntityModelNotificationEntityType?
entityModelNotificationEntityTypeNullableFromJson(
  Object? entityModelNotificationEntityType, [
  enums.EntityModelNotificationEntityType? defaultValue,
]) {
  if (entityModelNotificationEntityType == null) {
    return null;
  }
  return enums.EntityModelNotificationEntityType.values.firstWhereOrNull(
        (e) => e.value == entityModelNotificationEntityType,
      ) ??
      defaultValue;
}

String entityModelNotificationEntityTypeExplodedListToJson(
  List<enums.EntityModelNotificationEntityType>?
  entityModelNotificationEntityType,
) {
  return entityModelNotificationEntityType?.map((e) => e.value!).join(',') ??
      '';
}

List<String> entityModelNotificationEntityTypeListToJson(
  List<enums.EntityModelNotificationEntityType>?
  entityModelNotificationEntityType,
) {
  if (entityModelNotificationEntityType == null) {
    return [];
  }

  return entityModelNotificationEntityType.map((e) => e.value!).toList();
}

List<enums.EntityModelNotificationEntityType>
entityModelNotificationEntityTypeListFromJson(
  List? entityModelNotificationEntityType, [
  List<enums.EntityModelNotificationEntityType>? defaultValue,
]) {
  if (entityModelNotificationEntityType == null) {
    return defaultValue ?? [];
  }

  return entityModelNotificationEntityType
      .map((e) => entityModelNotificationEntityTypeFromJson(e.toString()))
      .toList();
}

List<enums.EntityModelNotificationEntityType>?
entityModelNotificationEntityTypeNullableListFromJson(
  List? entityModelNotificationEntityType, [
  List<enums.EntityModelNotificationEntityType>? defaultValue,
]) {
  if (entityModelNotificationEntityType == null) {
    return defaultValue;
  }

  return entityModelNotificationEntityType
      .map((e) => entityModelNotificationEntityTypeFromJson(e.toString()))
      .toList();
}

String? notificationEntityRequestBodyTypeNullableToJson(
  enums.NotificationEntityRequestBodyType? notificationEntityRequestBodyType,
) {
  return notificationEntityRequestBodyType?.value;
}

String? notificationEntityRequestBodyTypeToJson(
  enums.NotificationEntityRequestBodyType notificationEntityRequestBodyType,
) {
  return notificationEntityRequestBodyType.value;
}

enums.NotificationEntityRequestBodyType
notificationEntityRequestBodyTypeFromJson(
  Object? notificationEntityRequestBodyType, [
  enums.NotificationEntityRequestBodyType? defaultValue,
]) {
  return enums.NotificationEntityRequestBodyType.values.firstWhereOrNull(
        (e) => e.value == notificationEntityRequestBodyType,
      ) ??
      defaultValue ??
      enums.NotificationEntityRequestBodyType.swaggerGeneratedUnknown;
}

enums.NotificationEntityRequestBodyType?
notificationEntityRequestBodyTypeNullableFromJson(
  Object? notificationEntityRequestBodyType, [
  enums.NotificationEntityRequestBodyType? defaultValue,
]) {
  if (notificationEntityRequestBodyType == null) {
    return null;
  }
  return enums.NotificationEntityRequestBodyType.values.firstWhereOrNull(
        (e) => e.value == notificationEntityRequestBodyType,
      ) ??
      defaultValue;
}

String notificationEntityRequestBodyTypeExplodedListToJson(
  List<enums.NotificationEntityRequestBodyType>?
  notificationEntityRequestBodyType,
) {
  return notificationEntityRequestBodyType?.map((e) => e.value!).join(',') ??
      '';
}

List<String> notificationEntityRequestBodyTypeListToJson(
  List<enums.NotificationEntityRequestBodyType>?
  notificationEntityRequestBodyType,
) {
  if (notificationEntityRequestBodyType == null) {
    return [];
  }

  return notificationEntityRequestBodyType.map((e) => e.value!).toList();
}

List<enums.NotificationEntityRequestBodyType>
notificationEntityRequestBodyTypeListFromJson(
  List? notificationEntityRequestBodyType, [
  List<enums.NotificationEntityRequestBodyType>? defaultValue,
]) {
  if (notificationEntityRequestBodyType == null) {
    return defaultValue ?? [];
  }

  return notificationEntityRequestBodyType
      .map((e) => notificationEntityRequestBodyTypeFromJson(e.toString()))
      .toList();
}

List<enums.NotificationEntityRequestBodyType>?
notificationEntityRequestBodyTypeNullableListFromJson(
  List? notificationEntityRequestBodyType, [
  List<enums.NotificationEntityRequestBodyType>? defaultValue,
]) {
  if (notificationEntityRequestBodyType == null) {
    return defaultValue;
  }

  return notificationEntityRequestBodyType
      .map((e) => notificationEntityRequestBodyTypeFromJson(e.toString()))
      .toList();
}

String? paramsTimeTableRequestBodyParamTypeNullableToJson(
  enums.ParamsTimeTableRequestBodyParamType?
  paramsTimeTableRequestBodyParamType,
) {
  return paramsTimeTableRequestBodyParamType?.value;
}

String? paramsTimeTableRequestBodyParamTypeToJson(
  enums.ParamsTimeTableRequestBodyParamType paramsTimeTableRequestBodyParamType,
) {
  return paramsTimeTableRequestBodyParamType.value;
}

enums.ParamsTimeTableRequestBodyParamType
paramsTimeTableRequestBodyParamTypeFromJson(
  Object? paramsTimeTableRequestBodyParamType, [
  enums.ParamsTimeTableRequestBodyParamType? defaultValue,
]) {
  return enums.ParamsTimeTableRequestBodyParamType.values.firstWhereOrNull(
        (e) => e.value == paramsTimeTableRequestBodyParamType,
      ) ??
      defaultValue ??
      enums.ParamsTimeTableRequestBodyParamType.swaggerGeneratedUnknown;
}

enums.ParamsTimeTableRequestBodyParamType?
paramsTimeTableRequestBodyParamTypeNullableFromJson(
  Object? paramsTimeTableRequestBodyParamType, [
  enums.ParamsTimeTableRequestBodyParamType? defaultValue,
]) {
  if (paramsTimeTableRequestBodyParamType == null) {
    return null;
  }
  return enums.ParamsTimeTableRequestBodyParamType.values.firstWhereOrNull(
        (e) => e.value == paramsTimeTableRequestBodyParamType,
      ) ??
      defaultValue;
}

String paramsTimeTableRequestBodyParamTypeExplodedListToJson(
  List<enums.ParamsTimeTableRequestBodyParamType>?
  paramsTimeTableRequestBodyParamType,
) {
  return paramsTimeTableRequestBodyParamType?.map((e) => e.value!).join(',') ??
      '';
}

List<String> paramsTimeTableRequestBodyParamTypeListToJson(
  List<enums.ParamsTimeTableRequestBodyParamType>?
  paramsTimeTableRequestBodyParamType,
) {
  if (paramsTimeTableRequestBodyParamType == null) {
    return [];
  }

  return paramsTimeTableRequestBodyParamType.map((e) => e.value!).toList();
}

List<enums.ParamsTimeTableRequestBodyParamType>
paramsTimeTableRequestBodyParamTypeListFromJson(
  List? paramsTimeTableRequestBodyParamType, [
  List<enums.ParamsTimeTableRequestBodyParamType>? defaultValue,
]) {
  if (paramsTimeTableRequestBodyParamType == null) {
    return defaultValue ?? [];
  }

  return paramsTimeTableRequestBodyParamType
      .map((e) => paramsTimeTableRequestBodyParamTypeFromJson(e.toString()))
      .toList();
}

List<enums.ParamsTimeTableRequestBodyParamType>?
paramsTimeTableRequestBodyParamTypeNullableListFromJson(
  List? paramsTimeTableRequestBodyParamType, [
  List<enums.ParamsTimeTableRequestBodyParamType>? defaultValue,
]) {
  if (paramsTimeTableRequestBodyParamType == null) {
    return defaultValue;
  }

  return paramsTimeTableRequestBodyParamType
      .map((e) => paramsTimeTableRequestBodyParamTypeFromJson(e.toString()))
      .toList();
}

String? paramsTimeTableModelParamTypeNullableToJson(
  enums.ParamsTimeTableModelParamType? paramsTimeTableModelParamType,
) {
  return paramsTimeTableModelParamType?.value;
}

String? paramsTimeTableModelParamTypeToJson(
  enums.ParamsTimeTableModelParamType paramsTimeTableModelParamType,
) {
  return paramsTimeTableModelParamType.value;
}

enums.ParamsTimeTableModelParamType paramsTimeTableModelParamTypeFromJson(
  Object? paramsTimeTableModelParamType, [
  enums.ParamsTimeTableModelParamType? defaultValue,
]) {
  return enums.ParamsTimeTableModelParamType.values.firstWhereOrNull(
        (e) => e.value == paramsTimeTableModelParamType,
      ) ??
      defaultValue ??
      enums.ParamsTimeTableModelParamType.swaggerGeneratedUnknown;
}

enums.ParamsTimeTableModelParamType?
paramsTimeTableModelParamTypeNullableFromJson(
  Object? paramsTimeTableModelParamType, [
  enums.ParamsTimeTableModelParamType? defaultValue,
]) {
  if (paramsTimeTableModelParamType == null) {
    return null;
  }
  return enums.ParamsTimeTableModelParamType.values.firstWhereOrNull(
        (e) => e.value == paramsTimeTableModelParamType,
      ) ??
      defaultValue;
}

String paramsTimeTableModelParamTypeExplodedListToJson(
  List<enums.ParamsTimeTableModelParamType>? paramsTimeTableModelParamType,
) {
  return paramsTimeTableModelParamType?.map((e) => e.value!).join(',') ?? '';
}

List<String> paramsTimeTableModelParamTypeListToJson(
  List<enums.ParamsTimeTableModelParamType>? paramsTimeTableModelParamType,
) {
  if (paramsTimeTableModelParamType == null) {
    return [];
  }

  return paramsTimeTableModelParamType.map((e) => e.value!).toList();
}

List<enums.ParamsTimeTableModelParamType>
paramsTimeTableModelParamTypeListFromJson(
  List? paramsTimeTableModelParamType, [
  List<enums.ParamsTimeTableModelParamType>? defaultValue,
]) {
  if (paramsTimeTableModelParamType == null) {
    return defaultValue ?? [];
  }

  return paramsTimeTableModelParamType
      .map((e) => paramsTimeTableModelParamTypeFromJson(e.toString()))
      .toList();
}

List<enums.ParamsTimeTableModelParamType>?
paramsTimeTableModelParamTypeNullableListFromJson(
  List? paramsTimeTableModelParamType, [
  List<enums.ParamsTimeTableModelParamType>? defaultValue,
]) {
  if (paramsTimeTableModelParamType == null) {
    return defaultValue;
  }

  return paramsTimeTableModelParamType
      .map((e) => paramsTimeTableModelParamTypeFromJson(e.toString()))
      .toList();
}

String? errorDescriptionStatusNullableToJson(
  enums.ErrorDescriptionStatus? errorDescriptionStatus,
) {
  return errorDescriptionStatus?.value;
}

String? errorDescriptionStatusToJson(
  enums.ErrorDescriptionStatus errorDescriptionStatus,
) {
  return errorDescriptionStatus.value;
}

enums.ErrorDescriptionStatus errorDescriptionStatusFromJson(
  Object? errorDescriptionStatus, [
  enums.ErrorDescriptionStatus? defaultValue,
]) {
  return enums.ErrorDescriptionStatus.values.firstWhereOrNull(
        (e) => e.value == errorDescriptionStatus,
      ) ??
      defaultValue ??
      enums.ErrorDescriptionStatus.swaggerGeneratedUnknown;
}

enums.ErrorDescriptionStatus? errorDescriptionStatusNullableFromJson(
  Object? errorDescriptionStatus, [
  enums.ErrorDescriptionStatus? defaultValue,
]) {
  if (errorDescriptionStatus == null) {
    return null;
  }
  return enums.ErrorDescriptionStatus.values.firstWhereOrNull(
        (e) => e.value == errorDescriptionStatus,
      ) ??
      defaultValue;
}

String errorDescriptionStatusExplodedListToJson(
  List<enums.ErrorDescriptionStatus>? errorDescriptionStatus,
) {
  return errorDescriptionStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> errorDescriptionStatusListToJson(
  List<enums.ErrorDescriptionStatus>? errorDescriptionStatus,
) {
  if (errorDescriptionStatus == null) {
    return [];
  }

  return errorDescriptionStatus.map((e) => e.value!).toList();
}

List<enums.ErrorDescriptionStatus> errorDescriptionStatusListFromJson(
  List? errorDescriptionStatus, [
  List<enums.ErrorDescriptionStatus>? defaultValue,
]) {
  if (errorDescriptionStatus == null) {
    return defaultValue ?? [];
  }

  return errorDescriptionStatus
      .map((e) => errorDescriptionStatusFromJson(e.toString()))
      .toList();
}

List<enums.ErrorDescriptionStatus>? errorDescriptionStatusNullableListFromJson(
  List? errorDescriptionStatus, [
  List<enums.ErrorDescriptionStatus>? defaultValue,
]) {
  if (errorDescriptionStatus == null) {
    return defaultValue;
  }

  return errorDescriptionStatus
      .map((e) => errorDescriptionStatusFromJson(e.toString()))
      .toList();
}

String?
notificationEntitiesSearchFindAllSendNotificationByKeysGetTypeNullableToJson(
  enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType?
  notificationEntitiesSearchFindAllSendNotificationByKeysGetType,
) {
  return notificationEntitiesSearchFindAllSendNotificationByKeysGetType?.value;
}

String? notificationEntitiesSearchFindAllSendNotificationByKeysGetTypeToJson(
  enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType
  notificationEntitiesSearchFindAllSendNotificationByKeysGetType,
) {
  return notificationEntitiesSearchFindAllSendNotificationByKeysGetType.value;
}

enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType
notificationEntitiesSearchFindAllSendNotificationByKeysGetTypeFromJson(
  Object? notificationEntitiesSearchFindAllSendNotificationByKeysGetType, [
  enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType?
  defaultValue,
]) {
  return enums
          .NotificationEntitiesSearchFindAllSendNotificationByKeysGetType
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                notificationEntitiesSearchFindAllSendNotificationByKeysGetType,
          ) ??
      defaultValue ??
      enums
          .NotificationEntitiesSearchFindAllSendNotificationByKeysGetType
          .swaggerGeneratedUnknown;
}

enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType?
notificationEntitiesSearchFindAllSendNotificationByKeysGetTypeNullableFromJson(
  Object? notificationEntitiesSearchFindAllSendNotificationByKeysGetType, [
  enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType?
  defaultValue,
]) {
  if (notificationEntitiesSearchFindAllSendNotificationByKeysGetType == null) {
    return null;
  }
  return enums
          .NotificationEntitiesSearchFindAllSendNotificationByKeysGetType
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                notificationEntitiesSearchFindAllSendNotificationByKeysGetType,
          ) ??
      defaultValue;
}

String
notificationEntitiesSearchFindAllSendNotificationByKeysGetTypeExplodedListToJson(
  List<enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType>?
  notificationEntitiesSearchFindAllSendNotificationByKeysGetType,
) {
  return notificationEntitiesSearchFindAllSendNotificationByKeysGetType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String>
notificationEntitiesSearchFindAllSendNotificationByKeysGetTypeListToJson(
  List<enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType>?
  notificationEntitiesSearchFindAllSendNotificationByKeysGetType,
) {
  if (notificationEntitiesSearchFindAllSendNotificationByKeysGetType == null) {
    return [];
  }

  return notificationEntitiesSearchFindAllSendNotificationByKeysGetType
      .map((e) => e.value!)
      .toList();
}

List<enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType>
notificationEntitiesSearchFindAllSendNotificationByKeysGetTypeListFromJson(
  List? notificationEntitiesSearchFindAllSendNotificationByKeysGetType, [
  List<enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType>?
  defaultValue,
]) {
  if (notificationEntitiesSearchFindAllSendNotificationByKeysGetType == null) {
    return defaultValue ?? [];
  }

  return notificationEntitiesSearchFindAllSendNotificationByKeysGetType
      .map(
        (e) =>
            notificationEntitiesSearchFindAllSendNotificationByKeysGetTypeFromJson(
              e.toString(),
            ),
      )
      .toList();
}

List<enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType>?
notificationEntitiesSearchFindAllSendNotificationByKeysGetTypeNullableListFromJson(
  List? notificationEntitiesSearchFindAllSendNotificationByKeysGetType, [
  List<enums.NotificationEntitiesSearchFindAllSendNotificationByKeysGetType>?
  defaultValue,
]) {
  if (notificationEntitiesSearchFindAllSendNotificationByKeysGetType == null) {
    return defaultValue;
  }

  return notificationEntitiesSearchFindAllSendNotificationByKeysGetType
      .map(
        (e) =>
            notificationEntitiesSearchFindAllSendNotificationByKeysGetTypeFromJson(
              e.toString(),
            ),
      )
      .toList();
}

String? paramsTimeTablesSearchFindByParamTypeGetParamTypeNullableToJson(
  enums.ParamsTimeTablesSearchFindByParamTypeGetParamType?
  paramsTimeTablesSearchFindByParamTypeGetParamType,
) {
  return paramsTimeTablesSearchFindByParamTypeGetParamType?.value;
}

String? paramsTimeTablesSearchFindByParamTypeGetParamTypeToJson(
  enums.ParamsTimeTablesSearchFindByParamTypeGetParamType
  paramsTimeTablesSearchFindByParamTypeGetParamType,
) {
  return paramsTimeTablesSearchFindByParamTypeGetParamType.value;
}

enums.ParamsTimeTablesSearchFindByParamTypeGetParamType
paramsTimeTablesSearchFindByParamTypeGetParamTypeFromJson(
  Object? paramsTimeTablesSearchFindByParamTypeGetParamType, [
  enums.ParamsTimeTablesSearchFindByParamTypeGetParamType? defaultValue,
]) {
  return enums.ParamsTimeTablesSearchFindByParamTypeGetParamType.values
          .firstWhereOrNull(
            (e) => e.value == paramsTimeTablesSearchFindByParamTypeGetParamType,
          ) ??
      defaultValue ??
      enums
          .ParamsTimeTablesSearchFindByParamTypeGetParamType
          .swaggerGeneratedUnknown;
}

enums.ParamsTimeTablesSearchFindByParamTypeGetParamType?
paramsTimeTablesSearchFindByParamTypeGetParamTypeNullableFromJson(
  Object? paramsTimeTablesSearchFindByParamTypeGetParamType, [
  enums.ParamsTimeTablesSearchFindByParamTypeGetParamType? defaultValue,
]) {
  if (paramsTimeTablesSearchFindByParamTypeGetParamType == null) {
    return null;
  }
  return enums.ParamsTimeTablesSearchFindByParamTypeGetParamType.values
          .firstWhereOrNull(
            (e) => e.value == paramsTimeTablesSearchFindByParamTypeGetParamType,
          ) ??
      defaultValue;
}

String paramsTimeTablesSearchFindByParamTypeGetParamTypeExplodedListToJson(
  List<enums.ParamsTimeTablesSearchFindByParamTypeGetParamType>?
  paramsTimeTablesSearchFindByParamTypeGetParamType,
) {
  return paramsTimeTablesSearchFindByParamTypeGetParamType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> paramsTimeTablesSearchFindByParamTypeGetParamTypeListToJson(
  List<enums.ParamsTimeTablesSearchFindByParamTypeGetParamType>?
  paramsTimeTablesSearchFindByParamTypeGetParamType,
) {
  if (paramsTimeTablesSearchFindByParamTypeGetParamType == null) {
    return [];
  }

  return paramsTimeTablesSearchFindByParamTypeGetParamType
      .map((e) => e.value!)
      .toList();
}

List<enums.ParamsTimeTablesSearchFindByParamTypeGetParamType>
paramsTimeTablesSearchFindByParamTypeGetParamTypeListFromJson(
  List? paramsTimeTablesSearchFindByParamTypeGetParamType, [
  List<enums.ParamsTimeTablesSearchFindByParamTypeGetParamType>? defaultValue,
]) {
  if (paramsTimeTablesSearchFindByParamTypeGetParamType == null) {
    return defaultValue ?? [];
  }

  return paramsTimeTablesSearchFindByParamTypeGetParamType
      .map(
        (e) => paramsTimeTablesSearchFindByParamTypeGetParamTypeFromJson(
          e.toString(),
        ),
      )
      .toList();
}

List<enums.ParamsTimeTablesSearchFindByParamTypeGetParamType>?
paramsTimeTablesSearchFindByParamTypeGetParamTypeNullableListFromJson(
  List? paramsTimeTablesSearchFindByParamTypeGetParamType, [
  List<enums.ParamsTimeTablesSearchFindByParamTypeGetParamType>? defaultValue,
]) {
  if (paramsTimeTablesSearchFindByParamTypeGetParamType == null) {
    return defaultValue;
  }

  return paramsTimeTablesSearchFindByParamTypeGetParamType
      .map(
        (e) => paramsTimeTablesSearchFindByParamTypeGetParamTypeFromJson(
          e.toString(),
        ),
      )
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
    chopper.Response response,
  ) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
        body:
            DateTime.parse((response.body as String).replaceAll('"', ''))
                as ResultType,
      );
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
