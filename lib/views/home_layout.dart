import 'package:flutter/material.dart';
import 'package:kitunga/views/sidebar/sidebar_layout.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SideBarLayout(),
    );
  }
}
