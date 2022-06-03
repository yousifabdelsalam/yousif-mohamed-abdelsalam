// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_gallery1/Home_screen.dart';
import 'package:my_gallery1/Widgets/my_flutter_app_icons.dart';
import 'package:my_gallery1/password_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Login_screen extends StatefulWidget {


  @override
  _Login_screenState createState() => _Login_screenState();
}
class _Login_screenState extends State<Login_screen> {


  TextEditingController _email1 = new TextEditingController();
  TextEditingController _pass1 = new TextEditingController();

  final snackBar  = SnackBar(content: Text("The Email is Invalid"));
  final snackBar1 = SnackBar(content: Text("This Email Dose Not Exist"));
  final snackBar2 = SnackBar(content: Text("The Password is Invalid"));
  final snackBar3 = SnackBar(content: Text("this password dosen't match with this account"));

  var lolo ="";
  var pref;
  var pass;

   getPref()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    pref = preferences.getString("email");
    // print(preferences.getString("email"));
   }
   getPassPref() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    pass = preferences.getString("pass");
   }
@override
  void initState() {
    getPref();
    getPassPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           resizeToAvoidBottomInset : false,
           appBar: AppBar(backgroundColor: Color.fromRGBO(26, 28, 40, 1), leading: Builder(
           builder: (BuildContext context) {
    return Ink(
           child: IconButton(
           icon: Icon(MyFlutterApp.left_circle),
           onPressed: () {
           print("$pref");
           Navigator.of(context).pop();
        },
       ),
      );
     },
    ),
    title: Container(margin: EdgeInsets.only(left: 95),child: Text("Log In",style: TextStyle(fontSize: 25),)),
    ),
    body: Container(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//      Start Of The Email Form
      //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    Container(
           child: Padding(
           padding: const EdgeInsets.only(left: 20.0,top: 16),
           child: Text("Enter your email address",style: TextStyle(color: Colors.white,fontSize: 29),),
        )),

    Column(mainAxisAlignment: MainAxisAlignment.start,
           children: [
    Padding(
           padding: const EdgeInsets.only(left: 21,right: 21,top: 21),
         child: TextFormField(
           style: TextStyle(color:Colors.blue),
           controller: _email1,
           decoration: InputDecoration(isDense: true,
           contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 25),
           fillColor: Color.fromRGBO(49, 52 , 61 , 1),
           filled: true,
           hintText: "Email",hintStyle: TextStyle(color: Colors.grey),
           focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(50),borderSide: BorderSide(
           color: Color.fromRGBO(26, 28, 40, 1),
           ),
           ),
           enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(
           color: Color.fromRGBO(26, 28, 40, 1),
           ),
          ),
         ),
        ),
       ),
      ]
     ),
    //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//    End Of The Email Form
    //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//    Start Of The Pass Form
    //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    Container(
           child: Padding(
           padding: const EdgeInsets.only(left: 20.0,top: 16),
           child: Text("Enter your Password",style: TextStyle(color: Colors.white,fontSize: 29),),
         )),

    Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
    Padding(
          padding: const EdgeInsets.only(left: 21,right: 21,top: 21),
         child: TextFormField(
           style: TextStyle(color:Colors.blue),
           controller: _pass1,
           decoration: InputDecoration(isDense: true,
           contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 25),
           fillColor: Color.fromRGBO(49, 52 , 61 , 1),
           filled: true,
           hintText: "Password",hintStyle: TextStyle(color: Colors.grey),
           focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(50),borderSide: BorderSide(
           color: Color.fromRGBO(26, 28, 40, 1),
           ),
           ),
           enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(
           color: Color.fromRGBO(26, 28, 40, 1),
           ),
          ),
         ),
        ),
       ),
      ]
     ),
    //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//    End Of The Pass Form
    //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    Padding(
           padding: const EdgeInsets.only(right: 20,left: 20,top: 40,),
           child: Container(height: 50,width: double.infinity,
           child: MaterialButton(
           color: Colors.blue,shape:
           RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
           onPressed: (){
           if (_email1.text == lolo) {
           return ScaffoldMessenger.of(context).showSnackBar(snackBar);}
           if (_email1.text != pref) {
           return ScaffoldMessenger.of(context).showSnackBar(snackBar1);}
           if (_pass1.text  == lolo) {
           return ScaffoldMessenger.of(context).showSnackBar(snackBar2);}
           if (_pass1.text  != pass) {
           return ScaffoldMessenger.of(context).showSnackBar(snackBar3);
           } else {
           return Navigator.of(context).push(
           MaterialPageRoute(builder: (context) {
           return Home_Screen();
           })
           );
           }
           },child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 17),),
           ),
          ),
         ),

      ]),
     ),

    );
  }
}
