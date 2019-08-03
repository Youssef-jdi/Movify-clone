import 'dart:convert';

import 'package:http/http.dart';
import 'package:movify_clone/src/models/favorite_item.dart';
import '../utils/consts.dart' as API;

class SearchApiProvider {
  Client client = new Client();
  Future<ItemFavoriteMovies> fetchSearch(String searchString) async {
    final response = await client.post(API.searchUrl +
        API.apiKey +
        API.adult +
        API.searchQuery +
        searchString);
    if (response.statusCode == 200) {
      return ItemFavoriteMovies.fromJson(json.decode(response.body));
    } else {
      throw ('failed to fetch search');
    }
  }
}
