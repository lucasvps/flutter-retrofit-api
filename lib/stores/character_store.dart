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

  @observable
  ApiResult apiResult;

  @observable
  int page = 1;

  @observable
  int total = 0;

  @computed
  bool get alreadyLoaded => chars.length > 0 && chars.length >= total;

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

  @action
  Future<void> loadMore() async {
    if (alreadyLoaded) return;
    try {
      loadingChars = true;
      if (apiResult != null && apiResult.info.next != null) {
        print(apiResult.info.next);
        print(page);
        apiResult = await _repository.nextPage(page + 1);
      } else
        apiResult = await _repository.getAllChar();
      apiResult.results.forEach((element) => chars.add(element));
      loadingChars = false;
      total = chars.length + 1;
      setCurrentPage();
    } catch (e) {
      print(e);
    }
  }

  @action
  void setCurrentPage() {
    if (total > 0) {
      page = total ~/ 20;
    } else {
      page = 1;
    }
  }
}
