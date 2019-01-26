import 'package:flutter/material.dart';

class ChallengeWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 8, 10, 4),
      height: 120,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.elliptical(10, 50)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Column(
                children: <Widget>[
                  Icon(Icons.pie_chart, size: 42,color: Colors.blueAccent,),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text('Petro de Luanda'),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Text('0 - 0', style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),),
              ),

              Column(
                children: <Widget>[
                  Icon(Icons.arrow_drop_down_circle, size: 42, color: Colors.green,),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text('1º de Agosto'),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}