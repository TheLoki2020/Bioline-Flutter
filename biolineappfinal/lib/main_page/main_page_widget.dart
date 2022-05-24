import 'package:flutter/material.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({Key key}) : super(key: key);

  @override
  _MainPageWidgetState createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
    );
  }
}
