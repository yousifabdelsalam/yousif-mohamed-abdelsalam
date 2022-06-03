// @dart=2.9
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_gallery1/Widgets/my_flutter_app_icons.dart';
import 'package:my_gallery1/confirm_password_screen.dart';
import 'package:my_gallery1/login_screen.dart';
import 'package:my_gallery1/password_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';


class Sign_Up_screen extends StatefulWidget {

  @override
  _Sign_Up_screenState createState() => _Sign_Up_screenState();
}

class _Sign_Up_screenState extends State<Sign_Up_screen> {

  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  TextEditingController _email = new TextEditingController();
  var lolo ="";

  bool _the_choice = false;

savePref(String _email) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString("email", _email);
}

  @override
  Widget build(BuildContext context) {
    double screen_hight = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;

    final snackBar0 = SnackBar(content: Container(padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),child:Text("The Email is Invalid"),));
    final snackBar01 = SnackBar(content: Container(padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),child:Text("The Email Must be like exampile@gmail.com"),));
    final snackBar02 = SnackBar(content: Container(padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),child:Text("You Should Be Agree With Policy Terms"),));

    return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(backgroundColor: Color.fromRGBO(26, 28, 40, 1), leading: Builder(
        builder: (BuildContext context) {
    return Ink(
        child: IconButton(
        icon: Icon(MyFlutterApp.left_circle),
        onPressed: () {
        // print("$choice");
        Navigator.of(context).pop();
        },
       ),
      );
     },
    ),
        title: Text("STEP 1 OF 3"), centerTitle: true,
      ),
           body: Container(

           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           Padding(
             padding: const EdgeInsets.only(top: 16,left: 23),
             child: Text("SIGN UP",style: TextStyle(color: Colors.teal,fontSize: 12),textAlign: TextAlign.start,),),

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
             controller: _email,
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
           Container(child:Column(children:[
           Row(children:[ Padding(
             padding: const EdgeInsets.only(bottom: 30.0,left: 5),
             child:
           Checkbox(value: _the_choice, onChanged:(bool value){
             setState(() {
             _the_choice = value;
             });
            },
           side: BorderSide(
             color: Colors.grey,width: 2
          ),
             shape:RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(4)),
         )
        ),
           Column(children: [

           Padding(
             padding: const EdgeInsets.only(top: 25,left: 2),
             child: Text("Yes! I would like to receive special offers and updates\n about Disney+ and other products and",textAlign: TextAlign.start,style: TextStyle(color: Colors.grey,fontSize: 13,),),
           ),
           Container(padding: EdgeInsets.only(left: 5),child:Row(children: [

           Text("service from  ",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),

           Padding(
             padding: const EdgeInsets.only(right: 0),
             child:InkWell(child: Text("The Walt Disney Families of Companies",textAlign: TextAlign.start,style:  TextStyle(color: Colors.blue,fontSize: 13,decoration: TextDecoration.underline,)),
             onTap: () => launch('https://privacy.thewaltdisneycompany.com/en/company-overview/',),
             ),
             ),
             ],), ),
           Padding(
            padding: const EdgeInsets.only(right: 250.0),
            child: Text("by email.",textAlign: TextAlign.start,style: TextStyle(color: Colors.grey,fontSize: 13,),),
         ),
        ]
       ),
      ]
     ),
    ]
   ),
),
           SizedBox(height: 20,),
           Center(
             child: Padding(
             padding: const EdgeInsets.only(right: 16,left: 16),
             child: Container(height: screen_hight/2.7,width: double.infinity,child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [

//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
           Padding(padding: EdgeInsets.only(left: 5,),child:Container(
             child: Column(children: [
////////////////////////////////////////////////////////////

           Padding(
             padding: const EdgeInsets.only(right: 15,bottom: 0.0,left: 4),
             child: Container(
             child: Padding(
             padding: const EdgeInsets.only(top: 8,),
             child: Container(
             child: Text("Disney will use your data to personalise and improve your\nDisney+ experience and to send you information about\nDisney+. You can change you communication preferences\nat any time. We may use your data to described in our",
             style: TextStyle(color: Colors.grey,backgroundColor: Color.fromRGBO(49, 52, 61, 1),fontSize: 13.4),),
             ),
           ),
         ),
       ),

           Container(alignment: Alignment.center,padding:EdgeInsets.only(left: 4),child:Row(children: [
           InkWell(
           child:Text("Privacy Policy",textAlign: TextAlign.center,style:  TextStyle(color: Colors.blue,fontSize: 13.4,decoration: TextDecoration.underline,),),
           onTap: () => launch('https://privacy.thewaltdisneycompany.com/ar/current-privacy-policy-ar/',),),

           Text(",including sharing it with The Walt Disney" ,
           style: TextStyle(color: Colors.grey,backgroundColor: Color.fromRGBO(49, 52, 61, 1),fontSize: 13.4),),
           ]),
           ),

           Padding(
             padding: const EdgeInsets.only(right: 45),
             child: Container(
             child: Text(" Family of Companies. by clicking Agree & Continue,\n you",
             style: TextStyle(color: Colors.grey,backgroundColor: Color.fromRGBO(49, 52, 61, 1),fontSize: 13.4),),
             ),
           ),

           Container(alignment: Alignment.centerLeft,padding:EdgeInsets.only(left: 4),child:Row(children: [
           Text("are agreeing to our",style:TextStyle(color: Colors.grey,fontSize: 13.4,),),
           InkWell(
             child:Text(" Subscriber Agreement ",textAlign: TextAlign.center,style:  TextStyle(color: Colors.blue,fontSize: 13.4,decoration: TextDecoration.underline,),),
             onTap: () => launch('https://disneyterms.com/disneypluscorporategift',),),
           Text("and",
             style: TextStyle(color: Colors.grey,backgroundColor: Color.fromRGBO(49, 52, 61, 1),fontSize: 13.4),),
           ]),
           ),

           Container(alignment: Alignment.centerLeft,padding:EdgeInsets.only(left: 4),child:Row(children: [
             Text("acknowledging that you have read our ",style:TextStyle(color: Colors.grey,fontSize: 13.4,),),
             InkWell(
             child:Text(" Privacy Policy",textAlign: TextAlign.center,style:  TextStyle(color: Colors.blue,fontSize: 13.4,decoration: TextDecoration.underline,),),
             onTap: () => launch('https://privacy.thewaltdisneycompany.com/ar/current-privacy-policy-ar/',),),
             Text(" ,",style:TextStyle(color: Colors.grey,fontSize: 13.4,),),
           ]),
           ),

           Container(alignment: Alignment.center,padding:EdgeInsets.only(left: 4),child:Row(children: [
             InkWell(
               child:Text("Cookies Policy",textAlign: TextAlign.center,style:  TextStyle(color: Colors.blue,fontSize: 13.4,decoration: TextDecoration.underline,),),
               onTap: () => launch('https://privacy.thewaltdisneycompany.com/ar/current-privacy-policy-ar/',),),
             Text(" , and " ,
               style: TextStyle(color: Colors.grey,backgroundColor: Color.fromRGBO(49, 52, 61, 1),fontSize: 13.4),),
             InkWell(
               child:Text("UK & EU Privacy Rights",textAlign: TextAlign.center,style:  TextStyle(color: Colors.blue,fontSize: 13.4,decoration: TextDecoration.underline,),),
               onTap: () => launch('https://ec.europa.eu/commission/presscorner/detail/ro/ip_21_3183',),),
             Text(" ." ,style:TextStyle(color: Colors.grey,fontSize: 13.4,),),
           ]),
           ),

           ],),),),


           Expanded(child: SizedBox(height: 20,)),

           Padding(
             padding: const EdgeInsets.only(right: 20,left: 20,bottom: 10),
             child: Container(height: 50,width: double.infinity,
             child: MaterialButton(color: Colors.blue,shape:
           RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: (){
             if (_email.text == lolo) {
             return ScaffoldMessenger.of(context).showSnackBar(snackBar0);
             }
             if (_email.text != lolo){
             RegExp regex = new RegExp(pattern) ;
             if (!regex.hasMatch(_email.text)) {
             return ScaffoldMessenger.of(context).showSnackBar(snackBar01);}
             }
             if (_the_choice == false) {
             return ScaffoldMessenger.of(context).showSnackBar(snackBar02);
             }
             savePref(_email.text);
             ScaffoldMessenger.of(context)
             ..clearSnackBars();
             return Navigator.of(context).push(
             MaterialPageRoute(builder: (context) {
           return Password_Screen();
             })
            );
           },
             child: Text("AGREE & CONTINUE",style: TextStyle(color: Colors.white,fontSize: 17,wordSpacing: 2.5),),),
      ),
     ),


                ]),
                decoration: BoxDecoration(
                color: Color.fromRGBO(49, 52, 61, 1),
                borderRadius: BorderRadius.circular(12)),
             ),
            ),
           )
          ]
         ),
        )

    );

  }
}


