import 'package:mobx/mobx.dart';
part 'keys_store.g.dart';

class KeysStore = _KeysStore with _$KeysStore;

abstract class _KeysStore with Store{

  @observable
  String  keyAuth = '';

  @observable
  String  keyTips = '';

  @observable
  String  keySuggestion = '';

  @observable
  String  keySurvey = '';

  @action
  void setKeys(String auth, String tips, String suggestion, String survey){
    keyAuth = auth;
    keyTips = tips;
    keySuggestion = suggestion;
    keySurvey = survey;
  }

}