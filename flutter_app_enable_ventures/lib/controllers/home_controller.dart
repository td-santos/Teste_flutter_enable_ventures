import 'package:flutter_app_enable_ventures/models/user_model.dart';
import 'package:flutter_app_enable_ventures/repositories/api_repository.dart';

class HomeController {
  ApiRepository repository;

  HomeController() {
    repository = ApiRepository();
  }

  Future<UserModel> getUserApi(String apiKey) async {
    var userModel = await repository.getUser(apiKey);

    return userModel;
  }
}
