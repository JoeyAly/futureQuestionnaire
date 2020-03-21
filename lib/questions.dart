import 'package:flutter/material.dart';
import 'package:future/main.dart';

import './organizeQuestion.dart';
import './answerOptions.dart';
import './result.dart';



class questionsPage extends StatefulWidget{
  @override
  _questionsPageState createState() => _questionsPageState();
  }



class _questionsPageState extends State<questionsPage> {
  final questions = const[
    {
      'questionText': 'Whats your focus in the next 5 years',
      'answers': [
        {'possAnswers': 'School', 'score' :10},
        {'possAnswers': 'Getting a job', 'score' : 7},
        {'possAnswers': 'Starting a family', 'score' :5},
        {'possAnswers': 'Enjoying Hobbys', 'score' : 3}

      ],
    },
    {
      'questionText': 'Do you want to travel',
      'answers': [
        {'possAnswers': 'Yes', 'score': 3},
        {'possAnswers':' No', 'score': 6},
      ],
    },
    {
      'questionText': 'Whats your current relationship status',
      'answers': [
        {'possAnswers': 'Single', 'score': 10},
        {'possAnswers': 'Looking', 'score': 7},
        {'possAnswers': 'Dating', 'score': 5},
        {'possAnswers': 'Married', 'score': 3},
      ],
    },
    {
      'questionText': 'Do you see your relationship status changing',
      'answers': [
        {'possAnswers': 'Possibly, but not looking to', 'score': 9},
        {'possAnswers': 'Probably', 'score': 6},
        {'possAnswers': 'Hopefully not', 'score': 3},
      ],
    },
    {
      'questionText': 'How many children would you want',
      'answers': [
        {'possAnswers': '0', 'score' :10},
        {'possAnswers': '1-2', 'score' : 7},
        {'possAnswers': '3-4', 'score' : 5},
        {'possAnswers': 'Ive already had enough', 'score' :3}
      ],
    },

    {
      'questionText': 'Which of the following places would you like to travel to',
      'answers': [
        {'possAnswers': 'Japan', 'score': 10},
        {'possAnswers':' Canada', 'score': 7},
        {'possAnswers': 'Italy', 'score': 5},
        {'possAnswers': 'France', 'score': 3},
      ],
    },
    {
      'questionText': 'Which activity would you like to do',
      'answers': [
        {'possAnswers': 'Hangout with friends', 'score': 10},
        {'possAnswers': 'Sightsee', 'score': 7},
        {'possAnswers': 'Visit Disney', 'score': 5},
        {'possAnswers': 'Go to the beach', 'score': 3},
      ],
    },

    {

      'questionText': 'Where do you plan on living',
      'answers': [
        {'possAnswers': 'Dorm', 'score': 10},
        {'possAnswers':' Apartment', 'score': 7},
        {'possAnswers': 'House', 'score': 5},

      ],
    },

  ];

  var _questionIndex = 0;
  var _totalScore= 0;

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });


  }
  String restartPhrase = "Restart Quiz";

  beginAgain(){
    setState((){
      _questionIndex= 0;
      _totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

          appBar: AppBar(

            title: Text('Future Plans Questionnaire'

            ),

          ),
          body: _questionIndex< questions.length ? Column(

            children: [

              OrganizeQuestion(
                //replaces Text
                questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]['answers'] as List<Map<String, Object>>)
                  .map((answer) {                   //Dots Pull value from list and add as indivual
                return Answer(()=> _answerQuestion(answer['score']), answer['possAnswers']);
              }).toList(),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 7.0, right: 330.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Survey()
                        ));
                      },
                      child: new Container(

                          alignment: Alignment.bottomLeft,
                          height: 60.0,
                          decoration: new BoxDecoration(
                              color: Colors.redAccent,
                          borderRadius: new BorderRadius.circular(7.0)),
                          child: new Text("Go Back",
                              textAlign: TextAlign.center,
                              style: new TextStyle(

                               fontSize: 15.0, color: Colors.white))),
                    ),
                  ),


              ],



          )
              : Result(_totalScore),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              beginAgain();
            },
            child: Text(
              restartPhrase,
             // color: Colors.red[600],
              textAlign: TextAlign.center,
            ),

          ),
        ));

  }

}
