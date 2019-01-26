import 'package:flutter/material.dart';
import 'package:zero/ui/components/loading_indicator.dart';

class ChallengesTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: LoadingIndicator(isLoading: true,),
      ),
    );
  }
}