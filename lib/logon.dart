import 'package:flutter/material.dart';
import './dataResults.dart';

class LoginPage extends StatelessWidget {
  final _username = TextEditingController();
  final _pass = TextEditingController();
  final errorPhrase= "Try Again";

  @override
  Widget build(BuildContext context) {


    return new Scaffold(
      appBar: new AppBar(
          backgroundColor:Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Colors.redAccent)),
      body: Container(
        width: double.infinity,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: new Text(
                    "Future Plans",
                    style: new TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(                       //user inputs email
                controller: _username,
                decoration: new InputDecoration(labelText: 'Username'),
              ),
            ),
            new SizedBox(
              height: 10.1,   //Fixed keyboard sizing
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                controller: _pass,                           //user inputs pass
                obscureText: true,
                decoration: new InputDecoration(labelText: 'Password'),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 10.0),
                    child: GestureDetector(

                        child:
                        new Container(
                            alignment: Alignment.center,
                            height: 60.0,
                            decoration: new BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: new BorderRadius.circular(9.0)),
                            child: new Text("Login",
                                style: new TextStyle(
                                    fontSize: 20.0, color: Colors.white))),
                        onTap: () {
                          if (_username.text == 'admin' && _pass.text == 'admin') {
                             Navigator.push(context, MaterialPageRoute(   //If Username and Pass== admin
                                 builder: (context) => DataResults()));    //Sends to data results page
                          }
                      }
                      ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}