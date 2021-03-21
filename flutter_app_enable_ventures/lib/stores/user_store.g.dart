// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  final _$idAtom = Atom(name: '_UserStore.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$nameAtom = Atom(name: '_UserStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$tokenAtom = Atom(name: '_UserStore.token');

  @override
  String get token {
    _$tokenAtom.reportRead();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.reportWrite(value, super.token, () {
      super.token = value;
    });
  }

  final _$photoAtom = Atom(name: '_UserStore.photo');

  @override
  String get photo {
    _$photoAtom.reportRead();
    return super.photo;
  }

  @override
  set photo(String value) {
    _$photoAtom.reportWrite(value, super.photo, () {
      super.photo = value;
    });
  }

  final _$_UserStoreActionController = ActionController(name: '_UserStore');

  @override
  void setKeys(
      String idUser, String nameUser, String tokenUser, String photoUser) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.setKeys');
    try {
      return super.setKeys(idUser, nameUser, tokenUser, photoUser);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
name: ${name},
token: ${token},
photo: ${photo}
    ''';
  }
}
