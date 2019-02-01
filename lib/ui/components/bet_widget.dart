import 'package:flutter/material.dart';

class BetWidget extends StatelessWidget{

  Widget _buildCicle(String data, bool showCircle) {
    return Container(
      width: 32,
      height: 32,
      margin: EdgeInsets.only(top: 16),
      padding: showCircle? EdgeInsets.all(8): null,
      child: Center(
        child: Text(data,
          style: TextStyle(
              color: showCircle ? Colors.white : null,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      decoration: showCircle ? BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ): null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 16, 10, 16),
      margin: EdgeInsets.fromLTRB(8, 8, 8, 6),
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Petro de Luanda', style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
              ),
              _buildCicle('1', false)
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              Container(
                color: Colors.grey[200],
                width: 1,
                height: 20,
              ),

              _buildCicle("0", true),

            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('1º de Agosto',style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              _buildCicle('2', false),
            ],
          )
        ],
      ),
    );
  }
}