import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/controllers/home_controller.dart';
import 'package:flutter_app_enable_ventures/controllers/keys_controller.dart';
import 'package:flutter_app_enable_ventures/stores/keys_store.dart';
import 'package:flutter_app_enable_ventures/stores/user_store.dart';
import 'package:flutter_app_enable_ventures/views/home_page/home_page.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  KeysController _keysController = KeysController();
  HomeController _homeController = HomeController();

  
  @override
  Widget build(BuildContext context) {

    var store = Provider.of<KeysStore>(context);  
    var storeUser = Provider.of<UserStore>(context);

    Future.delayed(Duration(milliseconds: 1500),()async{
      await _keysController.getKeysApi().then((data) {
        store.setKeys(data.auth, data.tips, data.suggestion, data.survey);

        _homeController.getUserApi(store.keyAuth).then((user) {
          storeUser.setKeys(user.id, user.name, user.token, user.photo);
        });        

        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=> HomePage()
        ));
      });
    });

    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.blue[800],
            borderRadius: BorderRadius.circular(50)
          ),
          child: Center(
            child: Text('Vagas',style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              
            ),),
          ),
        ),
      ),
    );
  }
}