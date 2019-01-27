import 'package:flutter/material.dart';
import 'package:zero/ui/components/WinnerWidget.dart';
import 'package:zero/ui/components/loading_indicator.dart';

class WinnersTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: LoadingIndicator(
          isLoading: false,
          replacement: ListView.builder(
            itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (BuildContext c, _index){
                return WinnerWidget(index: _index+1,);
              }
          ),
        ),
      ),
    );
  }
}