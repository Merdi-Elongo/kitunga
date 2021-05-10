import 'package:flutter/material.dart';
import 'package:kitunga/views/pages/home_page.dart';
import 'package:kitunga/views/sidebar/sidebar.dart';

class SideBarLayout extends StatefulWidget {
  const SideBarLayout({Key key}) : super(key: key);

  @override
  _SideBarLayoutState createState() => _SideBarLayoutState();
}

class _SideBarLayoutState extends State<SideBarLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HomePage(),
          SideBar()
        ],
      ),
    );
  }
}
