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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: new Center(
          child: SplashView(),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
