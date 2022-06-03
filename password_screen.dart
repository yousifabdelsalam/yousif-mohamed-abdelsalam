// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_gallery1/confirm_password_screen.dart';
import 'package:my_gallery1/Widgets/password_generator.dart';
import 'package:my_gallery1/Widgets/my_flutter_app_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Password_Screen extends StatefulWidget {

  @override
  _Password_ScreenState createState() => _Password_ScreenState();
}

class _Password_ScreenState extends State<Password_Screen> {
  final _controller = TextEditingController();

  TextEditingController _password =  new TextEditingController();

  bool show_password = false;


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final snackBar = SnackBar(content: Container(padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),child:Text("The Password Is Invalid")));
    final snackBar0 = SnackBar(content: Container(padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),child:Text("The Password Must Be More Than 6 Values")));
    final snackBar01 = SnackBar(content: Container(padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),child:Text("The Password mustn't Be More Than 20 Values")));

    return  Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
        backgroundColor: Color.fromRGBO(26, 28, 40, 1), leading: Builder(
        builder: (BuildContext context) {
        return IconButton(
        icon: const Icon(MyFlutterApp.left_circle),
        onPressed: () {Navigator.of(context).pop();},
          );
        },
      ),
        title: Text("STEP 2 OF 3"), centerTitle: true,
      ),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
           padding: const EdgeInsets.only(top: 16,left: 23),
           child: Text("SIGN UP",style: TextStyle(color: Colors.teal,fontSize: 12),textAlign: TextAlign.start,),),

        Padding(
           padding: const EdgeInsets.only(left: 20.0,top: 10),
           child: Container(child: Text("Create a password",style: TextStyle(color: Colors.white,fontSize: 25),),),
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            controller: _password,
            style: TextStyle(color: Colors.blue),
            obscureText: !show_password,
            decoration: InputDecoration(isDense: true,
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

             Center(child: Column(children:[Text("Use a minimum of 6 characters",style: TextStyle(color:Colors.grey,fontSize: 13.4),),
             Padding(
                padding: const EdgeInsets.symmetric(vertical:30.0),
                child: Container(height: 20,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey),),
             ),
             Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                style: TextStyle(color: Colors.blue),
                controller: _controller,
                readOnly: true,
                enableInteractiveSelection: false,
                decoration: InputDecoration(isDense: true,
                fillColor: Color.fromRGBO(49, 52, 61, 1),
                filled: true,
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(49, 52, 61, 1)),
                    ),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan),
                    ),
                suffixIcon: IconButton(
                onPressed: (){
                final data = ClipboardData(text: _controller.text);
                Clipboard.setData(data);

                final snackbar = SnackBar(
                content: Text("Password Copy"));

                ScaffoldMessenger.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(snackbar);
                },
                icon: Icon(Icons.copy)),
                ),
              ),
            ),
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Colors.blue.shade500,
                ),
                onPressed: (){
                final password = generatePassword();
                _controller.text = password;
                },
                child: Text("Password Generate",style: TextStyle(color: Colors.white),)),

                Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(height: 50,width: 370,
                child: MaterialButton(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 17,wordSpacing: 2.7),),
                color: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                onPressed: () {
                if(_password.text.isEmpty){
                return ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }else{
                if(_password.text.length < 6 ){
                return ScaffoldMessenger.of(context).showSnackBar(snackBar0);
                }else{
                if(_password.text.length > 20 ){
                return ScaffoldMessenger.of(context).showSnackBar(snackBar01);
                }
                ScaffoldMessenger.of(context)
                ..clearSnackBars();
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Confirm_Password_Screen(password: _password.text);
                })
                );
                }
                }
                }
                ),
                ),
                )

    ]),
    )
    ]
    ),
    )
    );
  }
}

