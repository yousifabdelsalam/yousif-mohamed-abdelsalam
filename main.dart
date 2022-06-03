import 'package:flutter/material.dart';
import 'package:my_gallery1/Home_screen.dart';
import 'package:my_gallery1/Explore_Screen.dart';
import 'package:my_gallery1/confirm_password_screen.dart';
import 'package:my_gallery1/explore_screen.dart';
import 'package:my_gallery1/login_screen.dart';
import 'package:my_gallery1/password_screen.dart';
import 'package:my_gallery1/sign_up_screen.dart';
import 'package:my_gallery1/splash_screen.dart';
import 'package:my_gallery1/Start_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor:  Color.fromRGBO(26,28,40,1 ),),
          backgroundColor:  Color.fromRGBO(26,28,40,1 ),
          scaffoldBackgroundColor: Color.fromRGBO(26,28,40,1 ),
      ),
      home: Home_Screen(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
