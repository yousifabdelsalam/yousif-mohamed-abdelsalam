// // @dart=2.9
// import 'dart:ui';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:my_gallery1/d.dart';
// import 'package:my_gallery1/explore_screen.dart';
//
// import 'package:my_gallery1/s.dart';
// import 'package:my_gallery1/sign_up_screen.dart';
// import 'Home_screen.dart';
//
// class Start_Screen extends StatefulWidget {
//
//   @override
//   _Start_ScreenState createState() => _Start_ScreenState();
// }
//
// class _Start_ScreenState extends State<Start_Screen> {
//
//
//   int _selectedIndex = 0;
//   final List _children = [
//     Home_Screen(),
//     Explore_Screen(),
//     // L_Screen(),
//     // D_Screen(),
//     // L_Screen(),
//   ];
//   List lolo = [
//     'images/d/d9.jpg',
//     'images/d/d10.jpg',
//     'images/d/d11.jpg',
//     'images/d/d12.jpg'
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Container(
//         child:
//     Stack(children: [
//
//        Container(child:
//         _children[_selectedIndex],),
//
//
//     Container(alignment: Alignment.bottomCenter,
//     child: BackdropFilter(
//       filter: new ImageFilter.blur(sigmaX:0, sigmaY: 0),
//        child: new Container(
//         height: 80,
//         decoration: new BoxDecoration(
//             color: Colors.blueGrey.shade800.withOpacity(0.8)
//         ),
//         child: BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(icon:
//             Padding(
//               padding: const EdgeInsets.only(top: 13,left: 15),
//               child: Icon(Icons.home,size: 35,),),
//               label: "",backgroundColor: Colors.transparent,),
//             BottomNavigationBarItem(icon:
//             Padding(
//               padding: const EdgeInsets.only(right: 8),
//               child: Icon(Icons.search,size: 35,),
//             ),label: ""),
//             BottomNavigationBarItem(icon: Icon(Icons.download_rounded,size: 35,),label: ""),
//             BottomNavigationBarItem(icon: CircleAvatar(radius: 24,backgroundImage: AssetImage('images/s.jpg'),
//             ),label: ""),
//           ],
//           currentIndex: _selectedIndex,onTap: (index){
//           setState(() {
//             _selectedIndex = index;
//                   });
//                  },
//                 ),
//               ),
//             ),
//           ),
//
//        ]),
//       )
//
//     );
//   }
// }
