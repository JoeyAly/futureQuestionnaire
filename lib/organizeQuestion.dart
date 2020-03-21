import 'package:flutter/material.dart';

class OrganizeQuestion extends StatelessWidget{
  final String questionText;

  OrganizeQuestion(this.questionText);

  @override
  Widget build(BuildContext context){

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30),

        textAlign: TextAlign.center,
      ),
    );

  }
}