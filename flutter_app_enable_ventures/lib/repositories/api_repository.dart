import 'package:dio/dio.dart';
import 'package:flutter_app_enable_ventures/models/keys_model.dart';


class ApiRepository{

  Future<KeysModel> loadKeys()async{

    Dio dio = Dio();
             
      Response response = await dio.get('http://192.168.0.105:4040/keys'); 
      KeysModel keys = KeysModel.fromJson(response.data);      
    
    return keys;
  }

  
}