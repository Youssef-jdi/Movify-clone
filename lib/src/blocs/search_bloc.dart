import 'package:movify_clone/src/models/favorite_item.dart';
import 'package:movify_clone/src/ressources/repository.dart';
import 'package:rxdart/rxdart.dart';

class SearchBloc {
  final _repository = Repository();
  final __movieFetcher = PublishSubject<ItemFavoriteMovies>();
  Observable<ItemFavoriteMovies> get searchMovie => __movieFetcher.stream;
  

  

  searchMovies(String searchString) async {
    ItemFavoriteMovies itemFavoriteMovies =
        await _repository.fetchSearchResult(searchString);
    //print results
    print("movie " + itemFavoriteMovies.toString());
    __movieFetcher.sink.add(itemFavoriteMovies);
  }

  dispose() {
    __movieFetcher.close();
  }
}

final bloc = new SearchBloc();
