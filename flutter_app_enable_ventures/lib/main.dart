import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/repositories/api_repository.dart';
import 'package:flutter_app_enable_ventures/views/home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  ApiRepository repo = ApiRepository();
  
  @override
  Widget build(BuildContext context) {
    repo.loadKeys();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

