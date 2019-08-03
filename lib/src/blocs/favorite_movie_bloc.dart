import 'package:movify_clone/src/models/favorite_item.dart';
import 'package:movify_clone/src/ressources/repository.dart';
import 'package:rxdart/rxdart.dart';

class FavoriteMovieBloc {
  final _repository = Repository();
  final _movieFetcher = PublishSubject<ItemFavoriteMovies>();
  Observable<ItemFavoriteMovies> get allFavorites => _movieFetcher.stream;

  fetchFavoriteMovies() async {
    ItemFavoriteMovies itemFavoriteMovies =
        await _repository.fetchFavoriteMovies();
    _movieFetcher.sink.add(itemFavoriteMovies);
  }

  dispose() {
    _movieFetcher.close();
  }
}

final bloc = new FavoriteMovieBloc();
