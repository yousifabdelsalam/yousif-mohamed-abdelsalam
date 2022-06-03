import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_gallery1/login_screen.dart';
import 'package:my_gallery1/sign_up_screen.dart';


class Splash_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: new Container(
         color: Color.fromRGBO(26, 28, 40,1),
            child:
            Column(children:<Widget>[
              Container(child:Image.asset('images/main_image2.png',fit: BoxFit.cover,),),
              Text("The greatest stories, all in one place.\nNow including Star.",style: TextStyle(fontSize: 20,color: Colors.white,),textAlign: TextAlign.center,),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(child:Padding(padding: EdgeInsets.only(left: 10,top: 1),
                        child: Image.asset('images/d/d.png',height: 42,alignment: Alignment.topLeft,),),),

                      Padding(padding: EdgeInsets.only(top:20), child:Text("+",style: TextStyle(fontSize: 20,color: Colors.white,),textAlign: TextAlign.end,)),

                      Container(child:Padding(padding: EdgeInsets.only(top: 22,),
                        child: Image.asset('images/p/p6.png',height: 23  ,alignment: Alignment.topLeft,),),),

                      Padding(padding: EdgeInsets.only(top:20,), child:Text("+",style: TextStyle(fontSize: 20,color: Colors.white,),textAlign: TextAlign.end,)),

                      Expanded(child:Padding(padding: EdgeInsets.only(top: 17,left: 9,right: 3),
                        child: Image.asset('images/m/m.png',height: 17,alignment: Alignment.topLeft,),),),

                      Padding(padding: EdgeInsets.only(top:20,), child:Text("+",style: TextStyle(fontSize: 20,color: Colors.white,),textAlign: TextAlign.end,)),

                      Expanded(child:Padding(padding: EdgeInsets.only(top: 18,left: 3),
                        child: Image.asset('images/sw10.png',height: 47,alignment: Alignment.topLeft,),),),

                      Padding(padding: EdgeInsets.only(top:20,right: 5), child:Text("+",style: TextStyle(fontSize: 20,color: Colors.white,),textAlign: TextAlign.end,)),

                      Expanded(child:Padding(padding: EdgeInsets.only(top: 40,),
                        child: Image.asset('images/ng/ng10.png',height: 60,alignment: Alignment.topLeft,),),),

                      Padding(padding: EdgeInsets.only(top:20,left: 2), child:Text("+",style: TextStyle(fontSize: 20,color: Colors.white,),textAlign: TextAlign.end,)),

                      Expanded(child:Padding(padding: EdgeInsets.only(top: 24,left: 6,right: 5),
                        child: Image.asset('images/s/s5.png',height: 18,alignment: Alignment.topLeft,),),),
                    ],
                  ),
                ),
              ),





              Expanded(child:
              Column(mainAxisAlignment: MainAxisAlignment.end,children:[

              Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Container(height: 50,width: double.infinity,
              child: MaterialButton(color: Colors.blue,shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return Sign_Up_screen();
                })
                );
                },
              child: Text("SIGN UP NOW",style: TextStyle(color: Colors.white,fontSize: 17,wordSpacing: 2.5),),),
                ),
                ),


              Padding(padding: EdgeInsets.symmetric(vertical: 20),
              child: Text("WELCOME YOU IN MOST ENJOYABLE\n     "
              "         APP IN PLAY STORE.",style: TextStyle(color: Colors.teal),),
                ),


              Divider(height: 3,color: Colors.teal,),


              Container(height: 48,width: double.infinity,
              child: RaisedButton(elevation: 20,
              color: Color.fromRGBO(26, 28, 40, 1),onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return Login_screen();
                })
                );
                },
              child: Text("LOG IN",style: TextStyle(color: Colors.white,fontSize: 16,height: 0.1,wordSpacing: 2),),
                ),
                ),



              ]
             )
            )
          ]
        ),
      )
    );
  }
}
// Navigator.of(context).push(MaterialPageRoute(builder: (context){
// return carddetails();
