import 'package:flutter/material.dart';


Widget buildGridView(var snapshot){
  return GridView.count(
    crossAxisCount: 2,
    scrollDirection: Axis.vertical,
    children: List.generate(snapshot.data.results.length, (index){
      return Center(
        child: Card(
          
          elevation: 5.0,
          child: new Container(
            height: 150,
            alignment: Alignment.center,
            child: InkResponse(
              enableFeedback: true,
              child: Image.network(
                'https://image.tmdb.org/t/p/w185${snapshot.data.results[index].poster_path}',
                fit: BoxFit.cover,
              ),
              onTap: () => null,
            ),
          ),
        ),
      );
    }),
  );
}