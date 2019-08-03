import 'package:flutter/material.dart';
import 'package:movify_clone/src/blocs/search_bloc.dart';
import 'package:movify_clone/src/ui/Widgets/grid_view.dart';
import '../../models/favorite_item.dart';

class SearchResult extends StatefulWidget {
  SearchResult({this.search});
  final String search;

  @override
  State<StatefulWidget> createState() {
    
    return _SearchResultState();
  }

}


class _SearchResultState extends State<SearchResult> {


  @override
  void initState() {
    bloc.searchMovies(widget.search);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return new Container(
     color: Colors.black45,
     child: StreamBuilder(
       stream: bloc.searchMovie,
       builder: (context,AsyncSnapshot<ItemFavoriteMovies> snapshot){
          if(snapshot.hasData){
            return buildGridView(snapshot) ;
          }
          else if (snapshot.hasError){
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator(),);
       },
     ),
   );


  }
}