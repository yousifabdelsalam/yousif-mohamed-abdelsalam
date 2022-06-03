import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:my_gallery1/explore_screen.dart';
import 'package:my_gallery1/login_screen.dart';
import 'package:my_gallery1/s.dart';

import 'sign_up_screen.dart';


class s2 extends StatefulWidget {

  final movie;

  s2({
   @required this.movie});

  @override
  _s2State createState() => _s2State();
}

class _s2State extends State<s2> {

  List<String> _searchHistory = [
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
    'Captain Marvel',
    'Iron Man',
    'Hulk',
    'Mars',
    'March Of The Penguins',
    'Blood On The Wall',
    'Killing Kennedy',
    'Fauci',
    'World"s Last Great Places',
  ];

  @override
  Widget build(BuildContext context) {print(widget.movie);
    return Scaffold(

      body: Stack(
        children:[
          widget.movie=="Captain America"
              ?
          Explore_Screen()
              :
          widget.movie=="Insider" ?
          Login_screen()
              :
          widget.movie=="Flora"
              ?
          Explore_Screen()
              :
          widget.movie=="WandVision" ?
          Login_screen()
              :
          widget.movie=="Soul"
              ?
          Explore_Screen()
              :
          widget.movie=="Raya" ?
          Login_screen()
              :
          widget.movie=="Safety"
              ?
          Explore_Screen()
              :
          widget.movie=="Ned" ?
          Login_screen()
              :
          widget.movie=="Captain America"
              ?
          Explore_Screen()
              :
          widget.movie=="Insider" ?
          Login_screen()
              :
          widget.movie=="Next"
              ?
          Explore_Screen()
              :
          widget.movie=="Dollface" ?
          Login_screen()
              :
          widget.movie=="On The Room"
              ?
          Explore_Screen()
              :
          widget.movie=="Onward" ?
          Login_screen()
              :
          widget.movie=="Nemo"
              ?
          Explore_Screen()
              :
          widget.movie=="Incredibles" ?
          Login_screen()
              :
          widget.movie=="Cars"
              ?
          Explore_Screen()
              :
          widget.movie=="a bugs life" ?
          Login_screen()
              :
          widget.movie=="Thor"
              ?
          Explore_Screen()
              :
          widget.movie=="Avengers" ?
          Login_screen()
              :
          widget.movie=="Captain Marvel"
              ?
          Explore_Screen()
              :
          widget.movie=="Iron Man" ?
          Login_screen()
              :
          widget.movie=="Hulk"
              ?
          Explore_Screen()
              :
          widget.movie=="Mars" ?
          Login_screen()
              :
          widget.movie=="March Of The Penguins"
              ?
          Explore_Screen()
              :
          widget.movie=="Blood On The Wall" ?
          Login_screen()
              :
          widget.movie=="Killing Kennedy"
              ?
          Explore_Screen()
              :
          widget.movie=="Fauci" ?
          Login_screen()
              :
          widget.movie=='World"s Last Great Places'
              ?
          Explore_Screen()
              :
          Text("No Results found",style: TextStyle(color: Colors.red),),
        ])

    );
  }
   Captain(){
  Text("GGG",style: TextStyle(color: Colors.white),);


  }
}