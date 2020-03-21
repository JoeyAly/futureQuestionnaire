import 'package:flutter/material.dart';
import './main.dart';

class DataResults extends StatelessWidget {

  String get dataStats {
    var resultResponse = '$old: people should relax  \n$family: should focus on family'
        '\n$busy: need to explore '
        ' \n$young: people still need to figure things out';

    return resultResponse;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

        body: Container(


      child: Center(
        child: new Text(
        dataStats,
        style: TextStyle(fontSize: 30),

        textAlign: TextAlign.center,
      ),
      ),
        ),
        ),
    );
  }
}