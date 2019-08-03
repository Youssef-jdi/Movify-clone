import 'package:flutter/material.dart';
import 'package:movify_clone/src/models/favorite_item.dart';
import '../blocs/favorite_movie_bloc.dart';
import 'Widgets/horizontal_list.dart';

class FavoriteMovieList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MovieListState();
  }
}

class MovieListState extends State<FavoriteMovieList> {
  @override
  void initState() {
    super.initState();
    bloc.fetchFavoriteMovies();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: StreamBuilder(
        stream: bloc.allFavorites,
        builder: (context, AsyncSnapshot<ItemFavoriteMovies> snapshot) {
          if (snapshot.hasData) {
            return buildListView(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: LinearProgressIndicator());
        },
      ),
    );
  }

  // Widget buildList2(AsyncSnapshot<ItemFavoriteMovies> snapshot) {
  //   return GridView.builder(
  //       itemCount: snapshot.data.results.length,
  //       gridDelegate:
  //       new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  //       itemBuilder: (BuildContext context, int index) {
  //         return new GestureDetector(
  //           child: new Card(
  //             elevation: 5.0,
  //             child: new Container(
  //               alignment: Alignment.center,
  //               child: InkResponse(
  //                   enableFeedback: true,
  //                   child: Image.network(
  //                   'https://image.tmdb.org/t/p/w185${snapshot.data.results[index].poster_path}',
  //                   fit: BoxFit.cover,
  //                   ),
  //               onTap: () => null,
  //               ),
  //             ),
  //           ),
  //         );
  //       }
  //   );
  // }

}
