import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kitunga/utils/color.dart';
import 'package:kitunga/utils/string.dart';
import 'package:kitunga/views/account_transition_view.dart';
import 'package:kitunga/widget/buttonInput.dart';
import 'package:kitunga/widget/textInput.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // ignore: non_constant_identifier_names
  final T_username = TextEditingController();
  // ignore: non_constant_identifier_names
  final T_password = TextEditingController();

  void backFunction() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => AccountTransition(),
      ),
    );
  }

  @override
  void dispose() {
    T_username.dispose();
    T_password.dispose();
    super.dispose();
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
                                    onPressed: () => backFunction(),
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
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 100, left: 35, right: 35),
                  child: Column(
                    children: [
                      TextInput(labelText: email, icon: Icons.email, controller: T_username),
                      TextInput(labelText: password, icon: Icons.lock, margin: EdgeInsets.only(top: 10), controller: T_password),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.centerRight,
                        child: Text(forgot_password),
                      ),
                      ButtonInput(
                          onPressed: () => showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                // Retrieve the text the that user has entered by using the
                                // TextEditingController.
                                content: Text(T_username.text),
                              );
                            },
                          ),
                          text: login,
                          background: blue,
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 30),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )

    );
  }

}
