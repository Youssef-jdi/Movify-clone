import 'package:flutter/material.dart';


Widget buildGridView(var snapshot,var context){
  return GridView.count(
    crossAxisCount: 2,
    scrollDirection: Axis.vertical,
    
    children: List.generate(snapshot.data.results.length, (index){
      return Center(
        child: Card(
          color: Theme.of(context).backgroundColor,
          elevation: 5.0,
          child: new Container(
            width: 150,
            height: 170,
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