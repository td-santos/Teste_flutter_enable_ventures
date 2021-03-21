import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/controllers/keys_controller.dart';
import 'package:flutter_app_enable_ventures/repositories/api_repository.dart';
import 'package:flutter_app_enable_ventures/stores/keys_store.dart';
import 'package:flutter_app_enable_ventures/views/home_page/home_page.dart';
import 'package:flutter_app_enable_ventures/views/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  
  
  @override
  Widget build(BuildContext context) {
    

    return MultiProvider(
      providers: [
        Provider<KeysStore>.value(value: KeysStore())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(        
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}

