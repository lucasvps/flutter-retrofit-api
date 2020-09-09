import 'package:retrofit_api_test/core/dio_config.dart';
import 'package:retrofit_api_test/models/character_model.dart';

class CharacterRepository {
  static final CharacterRepository _instance = CharacterRepository.internal();

  final _api = CharacterApi(DioConfig().dio);

  factory CharacterRepository() => _instance;

  CharacterRepository.internal();

  Future<ApiResult> getAllChar() async => await _api.getAllCharacter();

  Future<Character> getSingleChar(String id) async =>
      await _api.getSingleCharacter(id);
}
