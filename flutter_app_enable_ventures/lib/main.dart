import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/stores/keys_store.dart';
import 'package:flutter_app_enable_ventures/views/splash/splash_screen.dart';
import 'package:provider/provider.dart';

import 'stores/user_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  
  
  @override
  Widget build(BuildContext context) {
    

    return MultiProvider(
      providers: [
        Provider<KeysStore>.value(value: KeysStore()),
        Provider<UserStore>.value(value: UserStore()),
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

