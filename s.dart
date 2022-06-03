import 'package:flutter/material.dart';

class L_Screen extends StatefulWidget {

  @override
  _L_ScreenState createState() => _L_ScreenState();
}

class _L_ScreenState extends State<L_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Color.fromRGBO(26, 28, 40, 1),
      body: Container(child: Text("L Screen"),),
    );
  }
}
