import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/controllers/home_controller.dart';
import 'package:flutter_app_enable_ventures/controllers/keys_controller.dart';
import 'package:flutter_app_enable_ventures/repositories/api_repository.dart';
import 'package:flutter_app_enable_ventures/stores/keys_store.dart';
import 'package:flutter_app_enable_ventures/views/home_page/components/appbar/custom_appbar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    
    var store = Provider.of<KeysStore>(context);

    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: PreferredSize(
          child: CustomAppBar(), preferredSize: Size(double.infinity, 100)),
      body: Center(
        child: Text('${store.keyAuth}'),
      ),
    );
  }
}
