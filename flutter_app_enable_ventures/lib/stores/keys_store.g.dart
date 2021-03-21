// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keys_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$KeysStore on _KeysStore, Store {
  final _$keyAuthAtom = Atom(name: '_KeysStore.keyAuth');

  @override
  String get keyAuth {
    _$keyAuthAtom.reportRead();
    return super.keyAuth;
  }

  @override
  set keyAuth(String value) {
    _$keyAuthAtom.reportWrite(value, super.keyAuth, () {
      super.keyAuth = value;
    });
  }

  final _$keyTipsAtom = Atom(name: '_KeysStore.keyTips');

  @override
  String get keyTips {
    _$keyTipsAtom.reportRead();
    return super.keyTips;
  }

  @override
  set keyTips(String value) {
    _$keyTipsAtom.reportWrite(value, super.keyTips, () {
      super.keyTips = value;
    });
  }

  final _$keySuggestionAtom = Atom(name: '_KeysStore.keySuggestion');

  @override
  String get keySuggestion {
    _$keySuggestionAtom.reportRead();
    return super.keySuggestion;
  }

  @override
  set keySuggestion(String value) {
    _$keySuggestionAtom.reportWrite(value, super.keySuggestion, () {
      super.keySuggestion = value;
    });
  }

  final _$keySurveyAtom = Atom(name: '_KeysStore.keySurvey');

  @override
  String get keySurvey {
    _$keySurveyAtom.reportRead();
    return super.keySurvey;
  }

  @override
  set keySurvey(String value) {
    _$keySurveyAtom.reportWrite(value, super.keySurvey, () {
      super.keySurvey = value;
    });
  }

  final _$_KeysStoreActionController = ActionController(name: '_KeysStore');

  @override
  void setKeys(String auth, String tips, String suggestion, String survey) {
    final _$actionInfo =
        _$_KeysStoreActionController.startAction(name: '_KeysStore.setKeys');
    try {
      return super.setKeys(auth, tips, suggestion, survey);
    } finally {
      _$_KeysStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
keyAuth: ${keyAuth},
keyTips: ${keyTips},
keySuggestion: ${keySuggestion},
keySurvey: ${keySurvey}
    ''';
  }
}
