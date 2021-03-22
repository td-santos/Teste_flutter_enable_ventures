import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/controllers/home_controller.dart';
import 'package:flutter_app_enable_ventures/models/tips_model.dart';
import 'package:flutter_app_enable_ventures/stores/keys_store.dart';
import 'package:flutter_app_enable_ventures/stores/tips_store.dart';
import 'package:flutter_app_enable_ventures/stores/user_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class TipsSection extends StatelessWidget {

  final TipsModel tips;
  HomeController _homeController = HomeController();

  TipsSection({Key key, this.tips}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var storeKey = Provider.of<KeysStore>(context);
    var storeUser = Provider.of<UserStore>(context);
    var storeTips = Provider.of<TipsStore>(context);

    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(tips.description,
            style: TextStyle(
              color: Colors.grey[850],
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.grey,
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: tips.button.show == true
                ?OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(side: MaterialStateProperty.all(BorderSide(color: Colors.blue[900], width: 1))),
                  child: Text('${tips.button.label.toUpperCase()}',
                    style: TextStyle(color: Colors.blue[900], fontSize: 12),
                  ),
                )
                : Container()
              ),
              SizedBox(width: 10),
              Text('Achou útil?',
                style: TextStyle(
                  color: Colors.grey[850],
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              ),
              Observer(
                builder: (_){
                  return Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(                    
                    icon: Icon(
                      Icons.thumb_up,
                      color: storeTips.like == false
                      ?Colors.blueGrey[400]
                      :Colors.blue[700]
                    ), 
                    onPressed: (){                      
                      _homeController.setLikeDislike(
                        storeKey.keySurvey, storeUser.token, tips.id, 'like').then((value) {
                          storeTips.setLike(true);
                      });
                    }),
                  IconButton(                    
                    icon: Icon(
                      Icons.thumb_down,
                      color: storeTips.dislike == false
                      ?Colors.blueGrey[400]
                      :Colors.blue[700]
                    ), 
                    onPressed: (){
                      _homeController.setLikeDislike(
                        storeKey.keySurvey, storeUser.token, tips.id, 'dislike').then((value) {
                          storeTips.setDislike(true);
                      });
                    }),
                ],
              );
                }
              )
            ],
          )
        ],
      ),
    );
  }
}
