import 'package:flutter_app_enable_ventures/models/suggestion_model.dart';
import 'package:flutter_app_enable_ventures/models/tips_model.dart';
import 'package:flutter_app_enable_ventures/models/user_model.dart';
import 'package:flutter_app_enable_ventures/repositories/api_repository.dart';

class HomeController {
  List<SuggestionModel> suggestionList =[];
  List<TipsModel> tips =[];

  ApiRepository repository;

  HomeController() {
    repository = ApiRepository();
  }

  Future<UserModel> getUserApi(String apiKey) async {
    var userModel = await repository.getUser(apiKey);

    return userModel;
  }

  Future getSuggestions(String apiKey, String userToken)async{
    suggestionList.clear();
    var data = await repository.getSuggestions(apiKey, userToken);
    
     data.forEach((data) {
       suggestionList.add(SuggestionModel.fromJson(data));
     });    
     
  }

  Future getTips(String apiKey)async{    
    tips.clear();
    var data = await repository.getTips(apiKey);
    data.forEach((data) {
      tips.add(TipsModel.fromJson(data));
     });
     
  }
}
