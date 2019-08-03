import 'package:flutter/material.dart';
import 'package:movify_clone/src/ui/favorite_movie_list.dart';
import 'package:movify_clone/src/ui/search_box.dart';

class Parent extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return  new ListView(
      children: <Widget>[
        SearchBox(),
        Padding(padding: new EdgeInsets.symmetric(vertical: 30,horizontal: 10),child:Text('Favorite Movies',style: new TextStyle(color: Colors.white, fontFamily: "Poppins",fontSize: 20,fontWeight: FontWeight.bold),)),
        FavoriteMovieList(),
         
      ],
    );
     
  }

}

