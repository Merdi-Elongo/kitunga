import 'package:flutter/material.dart';
import 'package:kitunga/views/loader.dart';
import 'package:kitunga/views/login_page.dart';
import 'package:kitunga/views/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: new Center(
          child: LoginPage(),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
