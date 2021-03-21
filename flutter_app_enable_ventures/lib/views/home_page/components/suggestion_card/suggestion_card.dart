import 'package:flutter/material.dart';
import 'package:flutter_app_enable_ventures/models/suggestion_model.dart';

class SuggestionCard extends StatefulWidget {

  final SuggestionModel suggestion;

  const SuggestionCard({Key key, this.suggestion}) : super(key: key);

  @override
  _SuggestionCardState createState() => _SuggestionCardState();
}

class _SuggestionCardState extends State<SuggestionCard> {

  bool sendCV = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.suggestion.jobAdTile,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.blue[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  widget.suggestion.date,
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          Text(
            widget.suggestion.company,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w300,
                fontSize: 15),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                '${widget.suggestion.totalPositions} ',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              Text(
                widget.suggestion.totalPositions < 2 ? 'vaga - ' : 'vagas - ',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              Text(
                widget.suggestion.locations[0],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              widget.suggestion.locations.length > 1
                  ? Text(
                      ' + ${widget.suggestion.locations.length} cidades',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    )
                  : Container(),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.suggestion.salary.real.isNotEmpty
                    ? widget.suggestion.salary.real
                    : widget.suggestion.salary.range,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Icon(
                Icons.remove_red_eye,
                color: Colors.blue[900],
                size: 20,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                sendCV =true;
              });
            },
            child: Container(
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  sendCV == false
                  ?'ENVIAR CURRÍCULO' : 'CURRÍCULO ENVIADO',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
