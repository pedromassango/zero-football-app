import 'package:flutter/material.dart';

class WinnerWidget extends StatelessWidget{

  final int index;

  WinnerWidget({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.fromLTRB(10, 4, 10, 8),
          padding: EdgeInsets.fromLTRB(16, 16, 12, 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(8),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4
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
                      fontSize: 24
                    ),),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Pedro Massango', style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text('Petro de Luanda VS 1º de Agosto'),
                      )
                    ],
                  ),
                  Spacer(),

                  Text('${index}0.00', style: TextStyle(
                    color: index%2 == 0? Colors.green : Colors.black,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),

            ],
          ),
        );
  }
}