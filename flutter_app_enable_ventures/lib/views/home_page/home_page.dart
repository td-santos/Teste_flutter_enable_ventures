import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/controllers/home_controller.dart';
import 'package:flutter_app_enable_ventures/stores/keys_store.dart';
import 'package:flutter_app_enable_ventures/stores/user_store.dart';
import 'package:flutter_app_enable_ventures/views/home_page/components/appbar/custom_appbar.dart';
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

    _homeController.getUserApi(storeKey.keyAuth).then((user) {
      storeUser.setKeys(user.id, user.name, user.token, user.photo);
    });

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
                  child: Text('Sugestões de vagas para você',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 260,
                  child: FutureBuilder(
                    future: _homeController.getSuggestions(storeKey.keySuggestion, storeUser.token),
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
              ],
            );
          },
        ),
      ),
    );
  }
}
