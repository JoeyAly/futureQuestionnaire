import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int scoreTotal;

  Result(this.scoreTotal);

  String get resultPhrase {
    var resultResponse = 'replace';
    if (scoreTotal<= 30){
      resultResponse = 'You may just want to sit back and relax at this point' ;
      print(old +=1);

    } else if (scoreTotal <= 44){
      resultResponse= 'Familys important, be sure to enjoy them';
      print(family +=1);

    }else if (scoreTotal <= 60){
      resultResponse = 'Try and be adventurous while you still can';
      print(busy +=1);

    } else{
      resultResponse= 'You\'ve still got time to figure things out';
      young +=1;
      print(young);

    }
    return resultResponse;          //+1s increment score for admin data
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
    ),
    );}}