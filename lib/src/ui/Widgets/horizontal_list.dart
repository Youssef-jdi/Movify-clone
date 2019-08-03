 
 import 'package:flutter/material.dart';

Widget buildListView(var snapshot) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data.results.length,
      itemBuilder: (BuildContext context, int index)  {
           return new GestureDetector(
            
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Card(
              
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

                new Container(width: 100,child: new Text('${snapshot.data.results[index].original_title}',style: new TextStyle(fontSize: 12),maxLines: 1,textAlign: TextAlign.center,),)
                

              
              
              ],
            ) ,
          );
      },
    );
  }