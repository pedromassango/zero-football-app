import 'package:flutter/material.dart';

class WinnerWidget extends StatelessWidget{

  final int index;
  bool _isTheFirst;
  double _fontSize;

  WinnerWidget({this.index}){
    this._isTheFirst = index == 1;
    this._fontSize = _isTheFirst ? 24 : 14;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
          margin: _isTheFirst ? EdgeInsets.fromLTRB(8, 8, 8, 32)
              : EdgeInsets.fromLTRB(20, 6, 20, 6),
          padding: EdgeInsets.fromLTRB(16, 16, 12, 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(8),
            ),
            color: _isTheFirst ? Colors.green : Colors.white,
            boxShadow: [
              BoxShadow(
                color: _isTheFirst ? Colors.green : Colors.black12,
                blurRadius: _isTheFirst ? 20 : 2
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 16,),
                    child: Text(index.toString(), style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: _fontSize,
                        color: _isTheFirst ? Colors.white : Colors.black

                    ),),
                  ),


                  Text('Pedro Massango', style: TextStyle(
                      fontSize: _isTheFirst ? 16 : null,
                      color: _isTheFirst ? Colors.white : Colors.black
                    //fontWeight: FontWeight.bold
                  ),
                  ),
                  Spacer(),

                  Text('${index}0.00', style: TextStyle(
                    fontSize: _fontSize,
                    color: _isTheFirst? Colors.white : Colors.black,
                    fontWeight: _isTheFirst ? FontWeight.bold : null
                  ),)
                ],
              ),

            ],
          ),
        );
  }
}