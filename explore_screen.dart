
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:my_gallery1/Start_Screen.dart';
import 'package:my_gallery1/Widgets/BNB.dart';
import 'package:my_gallery1/d.dart';

import 'G.dart';
import 'Home_screen.dart';
import 'Widgets/my_flutter_app_icons.dart';
import 's2.dart';
import 'sign_up_screen.dart';

class Explore_Screen extends StatefulWidget {

  @override
  State<Explore_Screen> createState() => _Explore_ScreenState();
}

class _Explore_ScreenState extends State<Explore_Screen> {

  late int lolo;
  List <dynamic> movies = [
    'Captain America',
    'Insider',
    'Flora',
    'WandaVision',
    'Soul',
    'Raya',
    'Safety',
    'Ned',
    'Next',
    'Dollface',
    'Own the Room',
    'Onward',
    'Nemo',
    'Incredibles',
    'Cars',
    'a bugs life',
    'Thor',
    'Avengers',
    'Iron Man',
    'Hulk',
    'Mars',
    'March Of The Penguins',
    'Blood On The Wall',
    'Killing Kennedy',
    'Fauci',
    'World"s Last \n Great Places',
  ];


  late List <dynamic> movielistsearch;
  final FocusNode _textFocusNode = FocusNode();
  late FloatingSearchBarController cont;
  @override
  void dispose() {
    _textFocusNode.dispose();
    // _textEditingController.dispose();
    cont.dispose();
    super.dispose();
  }

  @override
  void initState() {
    cont = FloatingSearchBarController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final List _children = [
      Home_Screen(),
      Explore_Screen(),
      // Demo(),
    ];
    return Scaffold(
      body:
      Container(
        child: Stack(
        children:[
        Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Container(height: double.infinity,width: double.infinity,
                  decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight, colors: [Color.fromRGBO(12 ,12 ,22 ,1 ),Color.fromRGBO(44 ,47 ,66 ,255 )],),),
                  child:
                  Column(children: [

                    //////////////////// PAGE CONTENT \\\\\\\\\\\\\\\\\\\\\\\
                    Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 245,top: 35),
                          child: Text("Explore",style: TextStyle(color: Colors.white,fontSize: 32),),
                        )),
                    Container(
                      child: Row(children:[
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 5,top:20),
                          child: Container(
                            height: 105,
                            width: 110,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(54,56,69,1),
                                spreadRadius: -5,
                                blurRadius: 10.0,
                              ),
                            ],
                              gradient:LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [Color.fromRGBO(44,47,64,255),Color.fromRGBO(12,12,22,1)]),
                            ),
                            child: MaterialButton(onPressed: (){},child: Column(
                              children: [
                                SizedBox(height: 25,),
                                Icon(Icons.star,color: Colors.white,size: 32,),
                                SizedBox(height: 10,),
                                Text("Originals",style: TextStyle(color: Colors.white,fontSize: 16,),),
                              ],
                            ),shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.teal)),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,right: 5,top:20),
                          child: Container(
                            height: 105,
                            width: 110,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(54,56,69,1),
                                spreadRadius: -5,
                                blurRadius: 10.0,
                              ),
                            ],
                              gradient:LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [Color.fromRGBO(44,47,64,255),Color.fromRGBO(12,12,22,1)]),
                            ),
                            child: MaterialButton(onPressed: (){},child: Column(
                              children: [
                                SizedBox(height: 25,),
                                Icon(Icons.movie_filter,color: Colors.white,size: 32,),
                                SizedBox(height: 10,),
                                Text("Movies",style: TextStyle(color: Colors.white,fontSize: 16,),),
                              ],
                            ),shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.teal)),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,right: 5,top:20),
                          child: Container(
                            height: 105,
                            width: 110,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(54,56,69,1),
                                spreadRadius: -5,
                                blurRadius: 10.0,
                              ),
                            ],
                              gradient:LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [Color.fromRGBO(44,47,64,255),Color.fromRGBO(12,12,22,1)]),
                            ),
                            child: MaterialButton(onPressed: (){},child: Column(
                              children: [
                                SizedBox(height: 25,),
                                Icon(Icons.live_tv_rounded,color: Colors.white,size: 32,),
                                SizedBox(height: 10,),
                                Text("Series",style: TextStyle(color: Colors.white,fontSize: 16,),),
                              ],
                            ),shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.teal)),),
                          ),
                        ),
                      ]),
                    ),
                    Expanded(child:
                    Container(padding: EdgeInsets.only(top: 20,left: 20),child:ListView(scrollDirection: Axis.vertical,
                        children:[Column(children:[
                          /////////////// CARDS START FROM HERE \\\\\\\\\\\\\\\

                                  Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child:
                                    InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                                    Image.asset("images/d/d1.jpg",fit: BoxFit.fill,),)),
                                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return Sign_Up_screen();
                                    })
                                    );
                                    },),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child:
                                    InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                                    Image.asset("images/j.jpg",fit: BoxFit.fill,),)),
                                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return Sign_Up_screen();
                                    })
                                    );
                                    },),
                                    ),]),

                        SizedBox(height: 10,),

                                  Row(
                                    children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child:
                                    InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                                    Image.asset("images/d/d3.jpg",fit: BoxFit.fill,),)),
                                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return Sign_Up_screen();
                                    })
                                    );
                                    },),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child:
                                    InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                                    Image.asset("images/d/d4.jpg",fit: BoxFit.fill,),)),
                                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return Sign_Up_screen();
                                    })
                                    );
                                    },),
                                    ),],),

                        SizedBox(height: 10,),

                                  Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child:
                                    InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                                    Image.asset("images/d/d5.jpg",fit: BoxFit.fill,),)),
                                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return Sign_Up_screen();
                                    })
                                    );
                                    },),
                                        ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child:
                                    InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                                    Image.asset("images/d/d6.jpg",fit: BoxFit.fill,),)),
                                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return Sign_Up_screen();
                                    })
                                    );
                                    },),
                                    ),],),
                        SizedBox(height: 10,),
                                  Row(
                                    children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child:
                                    InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
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
                                    InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                                    Image.asset("images/d/d8.jpg",fit: BoxFit.fill,),)),
                                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return Explore_Screen();
                                    })
                                    );
                                   },),
                                   )
                                 ]),
                        SizedBox(height: 10,),

                                  Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child:
                              InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                              Image.asset("images/s/s1.jpg",fit: BoxFit.fill,),)),
                                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return Sign_Up_screen();
                                })
                                );
                                },),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child:
                              InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                              Image.asset("images/s/s2.jpg",fit: BoxFit.fill,),)),
                                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return Sign_Up_screen();
                                })
                                );
                                },),
                            ),]),

                          SizedBox(height: 10,),

                                  Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child:
                                InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                                Image.asset("images/s/s3.jpg",fit: BoxFit.fill,),)),
                                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return Sign_Up_screen();
                                  })
                                  );
                                  },),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child:
                                InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                                Image.asset("images/p/p1.jpg",fit: BoxFit.fill,),)),
                                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return Sign_Up_screen();
                                  })
                                  );
                                  },),
                              ),],),

                          SizedBox(height: 10,),

                                  Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child:
                              InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
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
                              InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                              Image.asset("images/p/p3.jpg",fit: BoxFit.fill,),)),
                                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return Sign_Up_screen();
                                })
                                );
                                },),
                            ),],),
                          SizedBox(height: 10,),
                                  Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child:
                                  InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
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
                                  InkWell(child: GridTile(child: Container(height: 400/1.6,width: 280/1.8,child:
                                  Image.asset("images/p/p5.jpg",fit: BoxFit.fill,),)),
                                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                      return Explore_Screen();
                                    })
                                    );
                                    },),
                                )
                              ]),


                    ])
                        ]),
                    )
                   )
                  ]),
                ),
        ),
        BNB(),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: searchBarUI(),
        ),

        ]),
      ),
    );
  }
  Widget searchBarUI(){

    return FloatingSearchBar(
      backgroundColor: Colors.blueGrey,
      controller: cont,
      hint: 'Search.....',
      openAxisAlignment: 20.0,
      axisAlignment: 20.0,
      scrollPadding: EdgeInsets.only(top: 16, bottom: 20),
      elevation: 4.0,
      physics: BouncingScrollPhysics(),
      onQueryChanged: (value){
        setState(() {
          movielistsearch = movies.
          where((element) => element.toLowerCase().contains(value.trim().toLowerCase()))
              .toList();
        });
      },
      onSubmitted: (value){
        setState(() {
          movielistsearch = movies.
          where((element) => element.toLowerCase().contains(value.trim().toLowerCase()))
              .toList();
        });
      },
      transitionCurve: Curves.easeInOut,
      transitionDuration: Duration(milliseconds: 500),
      transition: CircularFloatingSearchBarTransition(),
      debounceDelay: Duration(milliseconds: 500),
      actions: [
        cont.query.isEmpty
            ?
        SizedBox()
            :
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: (){
            cont.clear();
          },)
      ],
      builder: (context, transition){
        return
          cont.query.isNotEmpty &&
              movielistsearch.length == 0

              ?
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'No results found,\nPlease try different keyword',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          )

              :
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Material(shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.teal)),
                  color: Color.fromARGB(26, 28, 40,1),
                  child: Container(decoration: BoxDecoration(gradient:LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                    colors: [Color.fromRGBO(12,12,22,1),Color.fromRGBO(44,47,64,255)]),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(54,56,69,1),
                        spreadRadius: -5,
                        blurRadius: 10.0,
                      ),
                        ],
                    ),
                    height: 200,width: 100,
                    child: GridView.builder(

                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 3,
                          crossAxisSpacing: 1,
                        ),
                        itemCount: cont.query.isNotEmpty
                            ? movielistsearch.length : movies.length,
                        itemBuilder: (ctx, index) {

                          return Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return s2(movie: movielistsearch[index],);
                                })
                                );
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                      radius: 24,backgroundImage: AssetImage('images/s.jpg')                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(cont.query.isNotEmpty ? movielistsearch[index] : movies[index],style: TextStyle(color: Colors.teal,fontSize: 11),),



                                ],),
                            ),
                          );
                        }),
                  )
              )
          );
      },
    );
  }

}
