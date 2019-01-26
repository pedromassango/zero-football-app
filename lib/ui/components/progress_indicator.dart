import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget{

  final bool isLoading;
  final Widget replacement;

  ProgressWidget({
    this.isLoading = true,
    this.replacement
  });

  @override
  Widget build(BuildContext context) {
    return isLoading ?
    Center(child: CircularProgressIndicator(),)
        :
    replacement ?? Container(width: 0, height: 0);
  }
}