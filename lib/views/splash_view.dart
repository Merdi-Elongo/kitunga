import 'package:flutter/material.dart';
import 'package:kitunga/utils/color.dart';
import 'package:kitunga/views/account_transition_view.dart';
import 'pages/home_page.dart';
import 'dart:async';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/accountTransition');
        // Navigator.
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Text(
                    'KITUNGA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 23.0
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
