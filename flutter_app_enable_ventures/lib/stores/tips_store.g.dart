// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tips_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TipsStore on _TipsStore, Store {
  final _$likeAtom = Atom(name: '_TipsStore.like');

  @override
  bool get like {
    _$likeAtom.reportRead();
    return super.like;
  }

  @override
  set like(bool value) {
    _$likeAtom.reportWrite(value, super.like, () {
      super.like = value;
    });
  }

  final _$dislikeAtom = Atom(name: '_TipsStore.dislike');

  @override
  bool get dislike {
    _$dislikeAtom.reportRead();
    return super.dislike;
  }

  @override
  set dislike(bool value) {
    _$dislikeAtom.reportWrite(value, super.dislike, () {
      super.dislike = value;
    });
  }

  final _$_TipsStoreActionController = ActionController(name: '_TipsStore');

  @override
  void setLike(bool likeTip) {
    final _$actionInfo =
        _$_TipsStoreActionController.startAction(name: '_TipsStore.setLike');
    try {
      return super.setLike(likeTip);
    } finally {
      _$_TipsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDislike(bool dislikeTip) {
    final _$actionInfo =
        _$_TipsStoreActionController.startAction(name: '_TipsStore.setDislike');
    try {
      return super.setDislike(dislikeTip);
    } finally {
      _$_TipsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
like: ${like},
dislike: ${dislike}
    ''';
  }
}
