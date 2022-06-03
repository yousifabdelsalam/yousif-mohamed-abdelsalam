import 'package:flutter/material.dart';


class Demo extends StatefulWidget {



  @override
  State<Demo> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Demo> {


  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(
                context : context,
                delegate: CustomSearchDelegate(),
              );
            },
          )
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Apple",
    "Orange",
    "Grape",
    "Pineapple",
    "Banana",
    "Pear",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query = "";
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return
      IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          close(context, null);
        },
      );

  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var fruit in searchTerms){
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index){
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for(var fruit in searchTerms){
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index){
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        }
    );

  }

}