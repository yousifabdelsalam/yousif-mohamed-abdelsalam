// @dart=2.9
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery1/Widgets/BNB.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Edit_Screen extends StatefulWidget {

  @override
  State<Edit_Screen> createState() => _Edit_ScreenState();
}

class _Edit_ScreenState extends State<Edit_Screen> {
   File image;
Future picker() async {
  var image = await ImagePicker().pickImage(source: ImageSource.gallery);
if(image== null) return;


  final image00 = File(image.path);

setState(() => this.image = image00
  //   Future<bool> saveImage(List<int> image00) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   image = base64Encode(image) as XFile;
  //   return prefs.setString("image", image);
  // }
);
}

 File img;


   @override
  void initState() {
    // getPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

          appBar: AppBar(backgroundColor: Color.fromRGBO(26, 28, 40, 1)
            ,elevation: 0 ,
            actions: [
              MaterialButton(
               child:   Text("Save",style: TextStyle(color: Colors.teal,fontSize: 17),),
                  onPressed: () {
              Navigator.of(context).pop();
            },),
          ],
          leading: Builder(
          builder: (BuildContext context) {
          return  Container(
            width: 200,
          child: Row(
          children:[
          InkWell(
          child:
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Center(child: Text("Cancel",style: TextStyle(color: Colors.teal,fontSize: 15),)),
          ),
          onTap: () {
          Navigator.of(context).pop();
          },
          ),
          ])
          );
          },
          ),
          centerTitle: true,
          title: Center(child: Text("Add Profile",style: TextStyle(color: Colors.white),)),

        ),



      body: Stack(alignment: Alignment.bottomCenter,
          children:[
            Container(
            child: Column(children: [
            Container(
              width: 105,
              height: 105,
            child: Stack(children: [
               CircleAvatar(
                radius: 50,
                backgroundImage: image == null?
                AssetImage("images/s.jpg")
                :
                FileImage(image)
                  ),
            Positioned(
                  left: 70,
                  top: 65,
                  child: Container(
                    height: 40,
                    width: 34,
                    // backgroundImage: AssetImage("images/s.jpg"),
                  decoration: BoxDecoration(shape: BoxShape.circle,
                  color: Colors.white),
                  child:
                      IconButton(splashRadius: 20,icon: Icon(Icons.edit),color: Colors.black,
                        onPressed: () =>
picker()

                      ),

                  ),
                ),


            ],
            ),
              )
            ],)
        ),


     BNB(),
     ])
    );
  }
}