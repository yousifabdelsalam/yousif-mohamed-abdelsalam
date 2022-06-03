// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:my_gallery1/Widgets/h.dart';

import 'Widgets/jj.dart';
import 'sign_up_screen.dart';

class Gemo extends StatefulWidget {
  @override
  _GemoState createState() => _GemoState();
}

class _GemoState extends State<Gemo> {

  List  movies = [
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
  List movielistsearch;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: Container(
        decoration: BoxDecoration(
        color: Colors.blue.shade200,
        borderRadius: BorderRadius.circular(20)),
          child: TextField(
          controller: _textEditingController,
          focusNode: _textFocusNode,
          cursorColor: Colors.black,
          decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: 'Search here',
          contentPadding: EdgeInsets.all(8)),
          onChanged: (value) {
          setState(() {
          movielistsearch = movies.where(
          (element) => element.toLowerCase().startsWith(value.toLowerCase()))
              .toList();
          });
          },
          ),

          ),
          ),
        body:
        ////////////   IF THERE IS NO WORDS WRITTEN   \\\\\\\\\\\
        _textEditingController.text.isNotEmpty &&
        movielistsearch.length == 0
        ? Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search_off,
                size: 160,
              ),
            ),
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
        ///////////   IF THERE IS WORDS WRITTEN   \\\\\\\\\\\
        : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3,
          crossAxisSpacing: 12,
        ),
        itemCount: _textEditingController.text.isNotEmpty
            ? movielistsearch.length : movies.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.food_bank),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(_textEditingController.text.isNotEmpty ? movielistsearch[index] : movies[index]),

              ],

            ),
          );
        }));

  }

}
