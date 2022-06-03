// @dart=2.9
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_gallery1/d.dart';
import 'package:my_gallery1/explore_screen.dart';
import 'package:my_gallery1/s2.dart';
import 'package:my_gallery1/sign_up_screen.dart';
import 'G.dart';
import 'Widgets/BNB.dart';
import 'Widgets/h.dart';

class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}
class _Home_ScreenState extends State<Home_Screen> {

    List lolo = [
      'images/d/d9.jpg',
      'images/d/d10.jpg',
      'images/d/d11.jpg',
      'images/d/d12.jpg'
    ];

    @override
    Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Stack(alignment: Alignment.bottomCenter,
       children:[
        Container(
           decoration: BoxDecoration(gradient:LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
           colors: [Color.fromRGBO(12,12,22,1),Color.fromRGBO(44,47,64,255)]),),

        child:Column(children: [
        Row(children: [
        Padding(
           padding: const EdgeInsets.only(left:150,top: 22),
           child: Image.asset("images/d/d.png",height: 60,width: 100,),
        ),
        Builder(
           builder: (BuildContext context) {
        return Padding(
           padding:  EdgeInsets.only(left: 83,top: 35),
        child: IconButton(alignment: Alignment.centerRight,
           icon: const Icon(Icons.connected_tv,color: Colors.white,),
           onPressed: () {Navigator.of(context).pop();},
           ),
          );
         },
        ),
       ]),
        Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
           height:200,
           child: CarouselSlider(
           items: lolo.map((I) {
           return Builder(builder: (BuildContext context) {
           return Container(
           child: Image.asset(I,fit: BoxFit.fitWidth,),
          );
          },
          );
        }).toList(), options: CarouselOptions(height: 200,initialPage: 0,enlargeCenterPage: true,autoPlay: true),
      ),
    ),
  ),
       Expanded(
       child: Padding(
           padding: const EdgeInsets.only(left: 4,top: 10,),
           child: SizedBox(height: double.infinity,width: double.infinity,child:ListView(scrollDirection: Axis.vertical,
           children:[
       Padding(
           padding: const EdgeInsets.only(left: 17,),
           child: Row(children: [
       Padding(
           padding: const EdgeInsets.only(left: 5,right: 5,top:20),
       child: Container(
           decoration: BoxDecoration(boxShadow: [
       BoxShadow(
           color: Color.fromRGBO(54,56,69,1),
           spreadRadius: -5,
           blurRadius: 10.0,
         ),
       ],
       gradient:LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [Color.fromRGBO(44,47,64,255),Color.fromRGBO(12,12,22,1)]),
      ),
       child: MaterialButton(onPressed: null,child: Image.asset('images/d/d.png',height: 70,width: 80,alignment: Alignment.topCenter,),shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.teal)),),
       ),
     ),
           buildPadding(null,"p/p6.png",70,80),
           buildPadding(null,"m/m.png",70,80),
          ],),
        ),
       Padding(
           padding: const EdgeInsets.only(left: 17),
           child: Row(children: [
           buildPadding(null,"sw10.png",70,80),
           buildPadding(null,"ng/ng10.png",70,80),
           buildPadding(null,"s/s5.png",70,80),
          ],),
        ),

       Container(child:  Padding(
           padding: const EdgeInsets.only(left: 4,top: 10,),
           child:   Column(children: [
           /////////////////////////  Disney   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
           Padding(
           padding: const EdgeInsets.only(top: 8,left: 10,bottom: 5),
       child: Row(
           children: [
       Text("New to Disney+",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900),),
           ],
         ),
       ),

           Row(children: [
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(10),
                   child: SizedBox(height: 400/2,width: 600/2,child:ListView(scrollDirection: Axis.horizontal,
                     children:[
                       InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child: Image.asset("images/d/d1.jpg",fit: BoxFit.fill,),)),onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                         return Explore_Screen();
                       })
                       );
                       },),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/d/d2.jpg",fit: BoxFit.fill,),)),
                         onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                           return Demo();
                         })
                         );
                         },),
                         ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/d/d3.jpg",fit: BoxFit.fill,),)),
                           onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                             return Gemo();
                           })
                           );
                           },),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/d/d4.jpg",fit: BoxFit.fill,),)),
                           onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                             return s2();
                           })
                           );
                           },),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/d/d5.jpg",fit: BoxFit.fill,),)),
                           onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                             return HW();
                           })
                           );
                           },),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/d/d6.jpg",fit: BoxFit.fill,),)),
                           onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                             return Sign_Up_screen();
                           })
                           );
                           },),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/d/d7.jpg",fit: BoxFit.fill,),)),
                           onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                             return Sign_Up_screen();
                           })
                           );
                           },),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/d/d8.jpg",fit: BoxFit.fill,),)),
                           onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                             return Explore_Screen();
                           })
                           );
                           },),
                       ),
                          ],),),
                      ),
                    ),
                  ]),
                  /////////////////////////  Disney   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                  /////////////////////////  Star   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
           Padding(
                padding: const EdgeInsets.only(top: 8,left: 10,bottom: 5),
                child: Row(
                  children: [
                    Text("Star Highlights",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900),),                                        ],
                ),
              ),

           Row(children: [
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(10),
                   child: SizedBox(height: 400/2,width: 600/2,child:ListView(scrollDirection: Axis.horizontal,
                     children:[

                       InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                       Image.asset("images/s/s1.jpg",fit: BoxFit.fill,),)),
                       onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Sign_Up_screen();
                         })
                         );
                         },),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/s/s2.jpg",fit: BoxFit.fill,),)),
                         onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                         return Sign_Up_screen();
                           })
                           );
                           },),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/s/s3.jpg",fit: BoxFit.fill,),)),
                         onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return Sign_Up_screen();
                           })
                           );
                           },),
                       ),

                           ],),),
                       ),
                     ),
                   ]),
                  /////////////////////////  Star   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                  /////////////////////////  Pixar   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
           Padding(
                padding: const EdgeInsets.only(top: 8,left: 10,bottom: 5),
                child: Row(
                  children: [
                    Text("Pixar Highlights",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900),),                                        ],
                ),
              ),

           Row(children: [
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(10),
                   child: SizedBox(height: 400/2,width: 600/2,child:ListView(scrollDirection: Axis.horizontal,
                     children:[

                       InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                       Image.asset("images/p/p1.jpg",fit: BoxFit.fill,),)),
                       onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Sign_Up_screen();
                         })
                         );
                         },),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/p/p2.jpg",fit: BoxFit.fill,),)),
                         onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                           return Sign_Up_screen();
                           })
                           );
                           },),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/p/p3.jpg",fit: BoxFit.fill,),)),
                         onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                           return Sign_Up_screen();
                           })
                           );
                           },),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/p/p4.jpg",fit: BoxFit.fill,),)),
                         onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                           return Sign_Up_screen();
                           })
                           );
                           },),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child:
                         InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                         Image.asset("images/p/p5.jpg",fit: BoxFit.fill,),)),
                         onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                           return Sign_Up_screen();
                           })
                           );
                           },),
                       ),
                     ],),),
                 ),
               ),
             ]),
                  /////////////////////////  Pixar   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                  /////////////////////////  Marvel   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
           Padding(
                padding: const EdgeInsets.only(top: 8,left: 10,bottom: 5),
                child: Row(
                  children: [
                    Text("Marvel HighLights",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900),),                                        ],
                ),
              ),

           Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(height: 400/2,width: 600/2,child:ListView(scrollDirection: Axis.horizontal,
                      children:[

                        InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                        Image.asset("images/m/m1.jpg",fit: BoxFit.fill,),)),
                        onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return Sign_Up_screen();
                          })
                          );
                          },),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child:
                          InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                          Image.asset("images/m/m2.jpg",fit: BoxFit.fill,),)),
                          onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return Sign_Up_screen();
                            })
                            );
                            },),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child:
                          InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                          Image.asset("images/m/m3.jpg",fit: BoxFit.fill,),)),
                          onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return Sign_Up_screen();
                            })
                            );
                            },),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child:
                          InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                          Image.asset("images/m/m4.jpg",fit: BoxFit.fill,),)),
                          onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return Sign_Up_screen();
                            })
                            );
                            },),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child:
                          InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                          Image.asset("images/m/m5.jpg",fit: BoxFit.fill,),)),
                          onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return Sign_Up_screen();
                            })
                            );
                            },),
                        ),

                      ],),),
                  ),
                ),
              ]),

                  /////////////////////////  Marvel   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                  /////////////////////////  National Geographic   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
           Padding(
                      padding: const EdgeInsets.only(top: 8,left: 10,bottom: 5),
                      child: Row(
                        children: [
                          Text("National Geographic HighLights",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900),),                                        ],
                      ),
                    ),

           Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(height: 400/2,width: 600/2,child:ListView(scrollDirection: Axis.horizontal,
                  children:[

                    InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                    Image.asset("images/ng/ng1.jpg",fit: BoxFit.fill,),)),
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Sign_Up_screen();
                      })
                      );
                      },),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:
                      InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                      Image.asset("images/ng/ng2.jpg",fit: BoxFit.fill,),)),
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Sign_Up_screen();
                        })
                        );
                        },),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:
                      InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                      Image.asset("images/ng/ng3.jpg",fit: BoxFit.fill,),)),
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Sign_Up_screen();
                        })
                        );
                        },),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:
                      InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                      Image.asset("images/ng/ng4.jpg",fit: BoxFit.fill,),)),
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Sign_Up_screen();
                        })
                        );
                        },),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:
                      InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                      Image.asset("images/ng/ng5.jpg",fit: BoxFit.fill,),)),
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Sign_Up_screen();
                        })
                        );
                        },),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:
                      InkWell(child: GridTile(child: Container(height: 400/2,width: 280/2,child:
                      Image.asset("images/ng/ng6.jpg",fit: BoxFit.fill,),)),
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Sign_Up_screen();
                        })
                        );
                        },),
                    ),
                  ],),),
              ),
            ),
          ]),

                 /////////////////////////  National Geographic   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            ],),
           ),),
            SizedBox(height: 80,)
         ],),
        ),),
      ),
        /////////''\\\\\\\\\
    ]),
   ),
       BNB(),
       ]),
 );
}

  Padding buildPadding(var onpressed,var iroute,double h,double w) {
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5,top:20),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(54,56,69,1),
            spreadRadius: -5,
            blurRadius: 10.0,
          ),
        ],
          gradient:LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [Color.fromRGBO(44,47,64,255),Color.fromRGBO(12,12,22,1)]),
        ),
        child: MaterialButton(onPressed: onpressed,child: Image.asset('images/$iroute',height: h,width: w,fit: BoxFit.fitWidth,),shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.teal)),),
      ),
    );
  }
}
