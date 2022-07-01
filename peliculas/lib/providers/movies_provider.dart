import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/helpers/debouncer.dart';
import 'package:peliculas/models/models.dart';
import 'package:peliculas/models/serach_responses.dart';

class MoviesProvider extends ChangeNotifier{
  String _baseUrl='api.themoviedb.org';
  String _apikey='1865f43a0549ca50d341dd9ab8b29f49';
  String _lenguage ='es-Es';
  List<Movie> onDisplayMovies=[];
  List<Movie> popularMovies=[];
  Map<int,List<Cast>> moviesCast={};

  int _popularPage=0;
  final debouncer= Debouncer(duration: Duration(milliseconds: 500));
  final StreamController<List<Movie>> _suggetionsStreamController = new StreamController.broadcast();
  Stream<List<Movie>> get suggetionsStream => this._suggetionsStreamController.stream;


  MoviesProvider(){
    print('Movies Provider Inicializado');
    this.getOnDisplayMovies();
    this.getPopularMovies();
  }
    Future <String>_getJsonData(String endpoint,[int page=1])async{
      final url =Uri.https(_baseUrl,endpoint,{
     'api_key' : _apikey,
     'language' :_lenguage,
     'page' : '$page'
      });
    final response = await http.get(url);
    return response.body;
    }

  getOnDisplayMovies()async{
    final jsonData = await _getJsonData('3/movie/now_playing');
    final nowPlayingResponse = NowPlayingResponse.fromJson(jsonData);
    onDisplayMovies=nowPlayingResponse.results;
    notifyListeners();
  }

  getPopularMovies()async{
    _popularPage+=1;
    final jsonData = await _getJsonData('3/movie/popular',_popularPage);
    final popularResponse = PopularResponse.fromJson(jsonData);
    popularMovies=[...popularMovies,...popularResponse.results];
    notifyListeners();
  } 

  Future <List<Cast>> getMoviesCast(int movieId)async{
    if(moviesCast.containsKey(movieId)) return moviesCast[movieId]!;
    print('Pidiendo info');
      final jsonData = await _getJsonData('3/movie/$movieId/credits');
      final creditsResponse = CreditsResponse.fromJson(jsonData);

      moviesCast[movieId]= creditsResponse.cast;
      return creditsResponse.cast;
  }

  Future <List<Movie>> searchMovie(String query)async{
    final url =Uri.https(_baseUrl,'3/search/movie',{
     'api_key' : _apikey,
     'language' :_lenguage,
     'query': query
      });
      final response = await http.get(url);
    final  searchResponse =SearchResponse.fromJson(response.body) ;
    return searchResponse.results;
  }

  void getSuggetionsByQuery(String searchTerm){
      debouncer.value='';
      debouncer.onValue= (value) async{
        final results =await this.searchMovie(value);
        this._suggetionsStreamController.add(results);
      };

      final timer = Timer.periodic(Duration(milliseconds: 200), (_) { 
          debouncer.value=searchTerm;

      });

      Future.delayed(Duration(milliseconds: 201)).then((value) => timer.cancel());

  }


}