import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:zero/ui/components/page_reveal.dart';

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {

  final _navigateAwayDelay = Duration (seconds: 1);
  final _animationDuration = Duration(seconds: 1);
  final _startAnimationDelay = Duration(seconds: 3);
  Animation<double> revealAnimation;
  AnimationController _animationController;


  void _navigateAway() {
    Navigator.pushNamed(context, '/intro');
  }
  
  @override
  void initState() {
    // set app in fullscreen
    SystemChrome.setEnabledSystemUIOverlays([]);

    _animationController = AnimationController(
      vsync: this,
      duration: _animationDuration
    );

    _animationController.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Future.delayed(_navigateAwayDelay, (){
          _navigateAway();
        });
      }
      
    });


    Future.delayed(_startAnimationDelay, (){
      _animationController.forward();
    });


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    revealAnimation = Tween<double>(
        begin: 0,
        end: 100
    ).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: Curves.linear
        )
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[

          AnimatedBuilder(
            animation: revealAnimation,
            builder: (context, child){
              return PageReveal(
                revealPercent: _animationController.value,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.red,
                ),
              );
            },
          ),

          Center(
            child: Icon(Icons.adjust, color: Colors.white, size: 90,),
          )
        ],
      ),
    );
  }

}