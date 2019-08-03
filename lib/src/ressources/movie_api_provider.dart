import 'dart:convert';
import 'package:http/http.dart';
import '../utils/consts.dart' as API;
import '../models/favorite_item.dart';
class MovieApiprovider {
  Client client = Client();
  

  Future<ItemFavoriteMovies> fetchFavoriteMovies() async {
  final response = await client
                           .get(API.favoritMovies+API.apiKey+API.english);
                         
    if(response.statusCode == 200){
     return ItemFavoriteMovies.fromJson(json.decode(response.body));
    }
    else {
      throw('failed to fetch favorite');
    }

  }



}