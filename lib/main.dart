import 'package:flutter/material.dart';
import 'package:kitunga/views/account_transition_view.dart';
import 'package:kitunga/views/pages/home_page.dart';
import 'package:kitunga/views/loader.dart';
import 'package:kitunga/views/login_page.dart';
import 'package:kitunga/views/sidebar/sidebar_layout.dart';
import 'package:kitunga/views/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/splashScreen': (context) => SplashView(),
        '/accountTransition': (context) => AccountTransition(),
        '/loginPage': (context) => LoginPage(),
      },
      initialRoute: '/splashScreen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
