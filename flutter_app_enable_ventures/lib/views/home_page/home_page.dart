import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/controllers/home_controller.dart';
import 'package:flutter_app_enable_ventures/stores/keys_store.dart';
import 'package:flutter_app_enable_ventures/stores/user_store.dart';
import 'package:flutter_app_enable_ventures/views/home_page/components/appbar/custom_appbar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomeController _homeController = HomeController();

  

  @override
  Widget build(BuildContext context) {
    
    var storeKey = Provider.of<KeysStore>(context);
    var storeUser = Provider.of<UserStore>(context);

    _homeController.getUserApi(storeKey.keyAuth).then((user) {
      storeUser.setKeys(user.id, user.name, user.token, user.photo);
      print(storeUser.photo);
    });

    

    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
          child: Observer(
            builder: (_){
              return CustomAppBar(
                nameUser: storeUser.name,
                photoUser: storeUser.photo,
          );
            },
          )),
      body: Center(
        child: Observer(
          builder: (_){
            return Text('${storeUser.name.split(' ')[0]}');
          },
        ),
      ),
    );
  }
}
