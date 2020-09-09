// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CharacterStore on _CharacterStoreBase, Store {
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

  final _$getAllCharactersAsyncAction =
      AsyncAction('_CharacterStoreBase.getAllCharacters');

  @override
  Future<void> getAllCharacters() {
    return _$getAllCharactersAsyncAction.run(() => super.getAllCharacters());
  }

  @override
  String toString() {
    return '''
chars: ${chars},
loadingChars: ${loadingChars}
    ''';
  }
}
