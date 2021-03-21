import 'package:flutter_app_enable_ventures/models/keys_model.dart';
import 'package:flutter_app_enable_ventures/repositories/api_repository.dart';

class KeysController {
  //String keyAuth = '';
  //String keyTips = '';
  //String keySuggestion = '';
  //String keySurvey = '';

  ApiRepository repository;

  KeysController() {
    repository = ApiRepository();
  }

  Future<KeysModel> getKeysApi() async {
    var keyModel = await repository.loadKeys();

    return keyModel;
  }
}
