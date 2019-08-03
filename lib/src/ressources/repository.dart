import 'package:movify_clone/src/models/favorite_item.dart';
import 'package:movify_clone/src/ressources/search_api_provider.dart';
import './movie_api_provider.dart';
class Repository {
  final movieApiprovider = MovieApiprovider();
  final searchApiProvider = SearchApiProvider();
  Future<ItemFavoriteMovies> fetchFavoriteMovies() => movieApiprovider.fetchFavoriteMovies();
  Future<ItemFavoriteMovies> fetchSearchResult(String searchString) => searchApiProvider.fetchSearch(searchString);
}