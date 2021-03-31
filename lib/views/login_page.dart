import 'package:flutter/material.dart';
import 'package:kitunga/utils/color.dart';
import 'package:kitunga/utils/string.dart';
import 'package:kitunga/views/account_transition_view.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void backFunction() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => AccountTransition(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 45, left: 30),
                child: SizedBox(
                  width: 45,
                  child: FloatingActionButton(
                      onPressed: () { this.backFunction(); },
                      child: Icon(Icons.arrow_back),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            margin: EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                login,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: blue,
                ),
              ),
            ),
          ),
          Container(
            child: Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Container(
                      child: SizedBox(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: email
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
