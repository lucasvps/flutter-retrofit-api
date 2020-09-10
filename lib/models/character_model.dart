import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit_api_test/core/dio_config.dart';

part 'character_model.g.dart';

@JsonSerializable()
class Infos {
  final int count;
  final int pages;
  final String next;
  final String prev;

  Infos(this.count, this.pages, this.next, this.prev);

  factory Infos.fromJson(Map<String, dynamic> json) => _$InfosFromJson(json);

  Map<String, dynamic> toJson() => _$InfosToJson(this);
}

@JsonSerializable()
class ApiResult {
  final List<Character> results;
  final Infos info;

  ApiResult({this.info, this.results});

  factory ApiResult.fromJson(Map<String, dynamic> json) =>
      _$ApiResultFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResultToJson(this);
}

@JsonSerializable()
class Character {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String image;
  final String url;
  final String created;

  Character(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.image,
      this.url,
      this.created});

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}

@RestApi()
abstract class CharacterApi {
  factory CharacterApi(Dio dio, {String baseUrl}) = _CharacterApi;

  @GET("character/")
  @Header(JSON_HEADER)
  Future<ApiResult> getAllCharacter();

  @GET("character/{id}")
  @Header(JSON_HEADER)
  Future<Character> getSingleCharacter(@Path("id") dynamic id);

  @GET("character/?page={page}")
  @Header(JSON_HEADER)
  Future<ApiResult> nextPage(@Path("page") int page);
}
