// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CharacterStore on _CharacterStoreBase, Store {
  Computed<bool> _$alreadyLoadedComputed;

  @override
  bool get alreadyLoaded =>
      (_$alreadyLoadedComputed ??= Computed<bool>(() => super.alreadyLoaded,
              name: '_CharacterStoreBase.alreadyLoaded'))
          .value;

  final _$charsAtom = Atom(name: '_CharacterStoreBase.chars');

  @override
  ObservableList<Character> get chars {
    _$charsAtom.reportRead();
    return super.chars;
  }

  @override
  set chars(ObservableList<Character> value) {
    _$charsAtom.reportWrite(value, super.chars, () {
      super.chars = value;
    });
  }

  final _$loadingCharsAtom = Atom(name: '_CharacterStoreBase.loadingChars');

  @override
  bool get loadingChars {
    _$loadingCharsAtom.reportRead();
    return super.loadingChars;
  }

  @override
  set loadingChars(bool value) {
    _$loadingCharsAtom.reportWrite(value, super.loadingChars, () {
      super.loadingChars = value;
    });
  }

  final _$apiResultAtom = Atom(name: '_CharacterStoreBase.apiResult');

  @override
  ApiResult get apiResult {
    _$apiResultAtom.reportRead();
    return super.apiResult;
  }

  @override
  set apiResult(ApiResult value) {
    _$apiResultAtom.reportWrite(value, super.apiResult, () {
      super.apiResult = value;
    });
  }

  final _$pageAtom = Atom(name: '_CharacterStoreBase.page');

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  final _$totalAtom = Atom(name: '_CharacterStoreBase.total');

  @override
  int get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(int value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  final _$getAllCharactersAsyncAction =
      AsyncAction('_CharacterStoreBase.getAllCharacters');

  @override
  Future<void> getAllCharacters() {
    return _$getAllCharactersAsyncAction.run(() => super.getAllCharacters());
  }

  final _$loadMoreAsyncAction = AsyncAction('_CharacterStoreBase.loadMore');

  @override
  Future<void> loadMore() {
    return _$loadMoreAsyncAction.run(() => super.loadMore());
  }

  final _$_CharacterStoreBaseActionController =
      ActionController(name: '_CharacterStoreBase');

  @override
  void setCurrentPage() {
    final _$actionInfo = _$_CharacterStoreBaseActionController.startAction(
        name: '_CharacterStoreBase.setCurrentPage');
    try {
      return super.setCurrentPage();
    } finally {
      _$_CharacterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
chars: ${chars},
loadingChars: ${loadingChars},
apiResult: ${apiResult},
page: ${page},
total: ${total},
alreadyLoaded: ${alreadyLoaded}
    ''';
  }
}
