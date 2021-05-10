import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kitunga/utils/color.dart';
import 'package:kitunga/utils/string.dart';
import 'package:kitunga/views/pages/home_page.dart';
import 'package:kitunga/views/login_page.dart';

class AccountTransition extends StatefulWidget {
  @override
  _AccountTransitionState createState() => _AccountTransitionState();
}

class _AccountTransitionState extends State<AccountTransition> {

  int radius = 60;

  @override
  void initState() {
    super.initState();
  }

  void loginPage() {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [blue, blue],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter
                  ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))
              ),
              child: Center(
                child: Text(
                  app_name,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Container(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ElevatedButton(
                          onPressed: (){ this.loginPage(); },
                          child: Text(
                            login,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                            foregroundColor: MaterialStateProperty.all<Color>(blue),
                            backgroundColor: MaterialStateProperty.all<Color>(blue),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text(
                            register,
                            style: TextStyle(
                              fontSize: 14,
                              color: blue,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                            foregroundColor: MaterialStateProperty.all<Color>(blue),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  side: BorderSide(color: blue, width: 1)
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}
