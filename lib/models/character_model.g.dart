// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Infos _$InfosFromJson(Map<String, dynamic> json) {
  return Infos(
    json['count'] as int,
    json['pages'] as int,
    json['next'] as String,
    json['prev'] as String,
  );
}

Map<String, dynamic> _$InfosToJson(Infos instance) => <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };

ApiResult _$ApiResultFromJson(Map<String, dynamic> json) {
  return ApiResult(
    info: json['info'] == null
        ? null
        : Infos.fromJson(json['info'] as Map<String, dynamic>),
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : Character.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ApiResultToJson(ApiResult instance) => <String, dynamic>{
      'results': instance.results,
      'info': instance.info,
    };

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return Character(
    id: json['id'] as int,
    name: json['name'] as String,
    status: json['status'] as String,
    species: json['species'] as String,
    type: json['type'] as String,
    gender: json['gender'] as String,
    image: json['image'] as String,
    url: json['url'] as String,
    created: json['created'] as String,
  );
}

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'image': instance.image,
      'url': instance.url,
      'created': instance.created,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _CharacterApi implements CharacterApi {
  _CharacterApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  getAllCharacter() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'character/',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResult.fromJson(_result.data);
    return value;
  }

  @override
  getSingleCharacter(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'character/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Character.fromJson(_result.data);
    return value;
  }

  @override
  nextPage(page) async {
    ArgumentError.checkNotNull(page, 'page');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'character/?page=$page',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResult.fromJson(_result.data);
    return value;
  }
}
