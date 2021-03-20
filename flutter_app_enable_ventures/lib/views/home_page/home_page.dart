import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/views/home_page/components/appbar/custom_appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size(double.infinity,100)),
      body: Container(),
    );
  }
}