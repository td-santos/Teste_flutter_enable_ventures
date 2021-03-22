import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app_enable_ventures/models/keys_model.dart';
import 'package:flutter_app_enable_ventures/models/user_model.dart';
import 'package:flutter_app_enable_ventures/util.dart';


class ApiRepository{

  Future<KeysModel> loadKeys()async{

    Dio dio = Dio();
             
      Response response = await dio.get('$baseUrl/keys'); 
      KeysModel keys = KeysModel.fromJson(response.data);      
    
    return keys;
  }

  Future<UserModel> getUser(String apiKey)async{
    Dio dio = Dio();
    String userId = 'cc3431c3-d9c9-48e2-8a1f-c3c0260f0712';
    Response response = await dio.get('$baseUrl/auth/$userId',
      options: Options(headers: {'x-api-key': apiKey}));

    UserModel user = UserModel.fromJson(response.data);

    return user;
  }

  Future<List> getSuggestions(String apiKey, String userToken)async{   
    
    Dio dio = Dio();
      
    Response response = await dio.get('$baseUrl/suggestion',
      options: Options(headers: {'Authorization': userToken,'x-api-key': apiKey}));    

    List suggestions = response.data;

    return suggestions;
  }

  Future<List> getTips(String apiKey)async{
    Dio dio = Dio();
    
    Response response = await dio.get('$baseUrl/tips',
      options: Options(headers: {'x-api-key': apiKey}));

    List tips = response.data;

    //print(response.data);

    return tips;
  }
}