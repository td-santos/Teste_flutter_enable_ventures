import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/models/tips_model.dart';

class TipsSection extends StatelessWidget {
  final TipsModel tips;

  const TipsSection({Key key, this.tips}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(                    
                    icon: Icon(Icons.thumb_up,color: Colors.blueGrey[400],), 
                    onPressed: (){}),
                  IconButton(                    
                    icon: Icon(Icons.thumb_down,color: Colors.blueGrey[400],), 
                    onPressed: (){}),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
