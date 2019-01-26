import 'package:flutter/material.dart';
import 'package:zero/ui/components/challenge_widget.dart';
import 'package:zero/ui/components/loading_indicator.dart';

class ChallengesTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 400,
      child: LoadingIndicator(
          isLoading: false,
          replacement: ListView.builder(
              itemCount: 30,
              shrinkWrap: true,
              itemBuilder: (context, index){
                return ChallengeWidget();
              }
          ),
        ),
    );
  }
}