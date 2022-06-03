// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_gallery1/Home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Start_Screen.dart';
import 'Widgets/my_flutter_app_icons.dart';

class Confirm_Password_Screen extends StatefulWidget {
  var password;
  Confirm_Password_Screen({@required this.password});

  @override
  _Confirm_Password_ScreenState createState() => _Confirm_Password_ScreenState(password: password);
}

   class _Confirm_Password_ScreenState extends State<Confirm_Password_Screen> {
   TextEditingController _confirm_password = new TextEditingController();

   var password;
  _Confirm_Password_ScreenState({this.password});
   bool ya = false;

      savePref(String password) async{
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setString("pass", password);
      }

      @override
      Widget build(BuildContext context) {
      final snackBar = SnackBar(content: Container(padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),child:Text("The password not matches")));
        return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
              backgroundColor: Color.fromRGBO(24, 26, 40, 1),
              title: Text(
              "STEP 3 OF 3",
              style: TextStyle(color: Colors.white),),
              centerTitle: true,
              leading: Builder(
              builder: (BuildContext context) {
        return IconButton(
              icon: const Icon(MyFlutterApp.left_circle),
              onPressed: () {Navigator.of(context).pop();},
              );
            },
          ),
        ),

        backgroundColor: Color.fromRGBO(24, 26, 40, 1),
        body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 25),
                  child: Container(
                  child: Row(
                  children: [
                  CircleAvatar(radius: 24,backgroundImage: AssetImage('images/s.jpg'),
                  ),
                  Padding(
                   padding: const EdgeInsets.only(left: 17),
                   child: Text("User Name",style: TextStyle(color: Colors.white,fontSize: 14),textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),
                ),

                  Padding(
                   padding: const EdgeInsets.only(left: 20.0,top: 15),
                   child: Container(child: Text("Confirm a password",style: TextStyle(color: Colors.white,fontSize: 25),),),
                  ),


                  Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                   child: Text("Confirm Your Disney Account Password",style: TextStyle(color: Colors.grey,fontSize: 13.4),),
                  ),


                  Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 10),
                   child:
                  TextFormField(
                   controller: _confirm_password,
                   style: TextStyle(color: Colors.blue),
                   obscureText: !show_password,
                   decoration: InputDecoration(isDense: true,hintText: "Password",hintStyle: TextStyle(color: Colors.grey),
                   contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                   fillColor: Color.fromRGBO(49, 52 , 61 , 1),
                   filled: true,
                   suffixIcon: IconButton(onPressed: () {
                     setState(() {
                       show_password = !show_password;
                     });
                   },
                     icon: show_password ?Icon( Icons.visibility,color: Colors.blue,):
                     Icon(Icons.visibility_off,color: Colors.grey,),splashRadius: 1,),

                   focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(50),borderSide: BorderSide(
                   color: Color.fromRGBO(26, 28, 40, 1),
                      ),
                      ),
                   enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5),
                   borderSide: BorderSide(
                   color: Color.fromRGBO(26, 28, 40, 1),
                      ),
                     ),
                    ),
                   ),
                  ),

                Center(child: Column(children:[Text("Don't Forget Your Password , and Enjoy The App ❤💜💚",style: TextStyle(color:Colors.grey,fontSize: 13.4),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:30.0),
                  child: Container(height: 20,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey),),
                  ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Container(height: 50,width: 365,
                  child: MaterialButton(child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 17,wordSpacing: 2.7),),
                  color: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  onPressed: () {
                  if (_confirm_password.text != password) {
                  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                  if (_confirm_password.text == password){
                  savePref(password);
                  ScaffoldMessenger.of(context)
                  ..clearSnackBars();
                  return Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                  return Home_Screen();
                          })
                         );
                        }
                       }
                      }
                     ),
                    ),
                   ),
                 ]),
                )
             ////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\
            ]
          ),
        ),
      );
    }
  }


////////////////////////////////////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class rr extends StatefulWidget {


  @override
  _rrState createState() => _rrState();
}

  bool show_password = false;

class _rrState extends State<rr> {
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {
      setState(() {
        show_password = !show_password;
      });
    },
      icon: show_password ?Icon( Icons.visibility,color: Colors.blue,):
      Icon(Icons.visibility_off,color: Colors.grey,),splashRadius: 1,);

  }
}
