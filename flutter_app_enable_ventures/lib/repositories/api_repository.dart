import 'package:dio/dio.dart';


class ApiRepository{

  Future<Map> loadKeys()async{

    Dio dio = Dio();         
      Response response = await dio.get('http://192.168.0.105:4040/keys'); 
      Map data = response.data;  

      print(data);
    
    return data;
  }
}