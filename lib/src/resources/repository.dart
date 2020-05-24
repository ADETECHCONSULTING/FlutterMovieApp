import 'package:flutterblocmovieapp/src/models/item_model.dart';
import 'package:flutterblocmovieapp/src/models/trailer_model.dart';
import 'package:flutterblocmovieapp/src/resources/movie_api_provider.dart';

//This Repository class is the central point from where the data will flow to the BLOC
class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();

  Future<TrailerModel> fetchTrailers(int movieId) => moviesApiProvider.fetchTrailer(movieId);

}