import 'package:flutter/material.dart';
import 'package:kitunga/utils/color.dart';
import 'package:kitunga/utils/string.dart';
import 'package:kitunga/views/account_transition_view.dart';
import 'package:kitunga/widget/textInput.dart';

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

  void connect() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  width: 38,
                                  height: 38,
                                  margin: EdgeInsets.only(top: 40, left: 15),
                                  child: FloatingActionButton(
                                    onPressed: (){ this.connect(); },
                                    child: Icon(Icons.arrow_back, size: 20,),
                                    backgroundColor: blue,
                                  )
                              ),
                            ],
                          ),
                        ),
                      )
                  ),
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                          child: Text(
                            login.toUpperCase(),
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: blue
                            ),
                          ),
                      ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 35, left: 35, right: 35),
                child: Column(
                  children: [
                    TextInput(hint: email, icon: Icons.email),
                    TextInput(hint: password, icon: Icons.lock),
                  ],
                ),
              ),
            )
          ],
        ),
      )

    );
  }

}
