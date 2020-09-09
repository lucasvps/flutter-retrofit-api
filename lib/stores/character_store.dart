import 'package:mobx/mobx.dart';
import 'package:retrofit_api_test/models/character_model.dart';
import 'package:retrofit_api_test/repositories/character_repository.dart';
part 'character_store.g.dart';

class CharacterStore = _CharacterStoreBase with _$CharacterStore;

abstract class _CharacterStoreBase with Store {
  CharacterRepository _repository = CharacterRepository();

  @observable
  ObservableList<Character> chars = ObservableList<Character>();

  @observable
  bool loadingChars = false;

  @action
  Future<void> getAllCharacters() async {
    loadingChars = true;
    chars = ObservableList<Character>();
    var aux = await _repository.getAllChar();
    aux.results.forEach((element) {
      chars.add(element);
    });
    loadingChars = false;
  }
}
