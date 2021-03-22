import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/controllers/home_controller.dart';
import 'package:flutter_app_enable_ventures/models/tips_model.dart';
import 'package:flutter_app_enable_ventures/stores/keys_store.dart';
import 'package:flutter_app_enable_ventures/stores/user_store.dart';
import 'package:flutter_app_enable_ventures/views/home_page/components/appbar/custom_appbar.dart';
import 'package:flutter_app_enable_ventures/views/home_page/components/tips_section/tips_section.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'components/suggestion_section/suggestion_section.dart';

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
    
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: Observer(
            builder: (_) {
              return CustomAppBar(
                nameUser: storeUser.name,
                photoUser: storeUser.photo,
              );
            },
          )),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: Observer(
          builder: (_) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Sugestões de vagas para você',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 260,
                  child: FutureBuilder(
                    future: _homeController.getSuggestions(
                        storeKey.keySuggestion, storeUser.token),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                        case ConnectionState.waiting:
                        case ConnectionState.active:
                          return Center(child: CircularProgressIndicator());
                        case ConnectionState.done:
                          return SuggestionSection(
                            list: _homeController.suggestionList,
                          );
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '#DicasDosRecrutadores',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                      )
                    ],
                  ),
                ),
                FutureBuilder(
                  future: _homeController.getTips(storeKey.keyTips),
                  builder: (context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                      case ConnectionState.waiting:
                      case ConnectionState.active:
                        return Center(child: CircularProgressIndicator());
                      case ConnectionState.done:
                        Random random = Random();
                        int randomIndex = random.nextInt(_homeController.tips.length);
                        TipsModel tips = _homeController.tips[randomIndex];
                        return Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                          child: TipsSection(tips: tips),
                        );
                    }
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
