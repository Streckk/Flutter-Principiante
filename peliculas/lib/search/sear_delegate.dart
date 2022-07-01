


import 'package:flutter/material.dart';
import 'package:peliculas/models/models.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:provider/provider.dart';

class MovieSearchDelegate extends SearchDelegate{
 
  @override
  // TODO: implement searchFieldLabel
  String get searchFieldLabel => 'Buscar Pelicula';


  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: ()=>query='', 
        icon: Icon(Icons.clear)
        )];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
     return IconButton(
      onPressed: ()=>close(context, null), 
      icon: const Icon(Icons.arrow_back)
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    if(query.isEmpty){
      return  _EmptyContainer();
    }
    print('hhtp requets');
    final movieProvider = Provider.of<MoviesProvider>(context);
    movieProvider.getSuggetionsByQuery(query);
    return StreamBuilder(
      stream: movieProvider.suggetionsStream,
      builder: (_, AsyncSnapshot<List<Movie>>snapshot) {
        if(!snapshot.hasData) return _EmptyContainer();
        final movies = snapshot.data!;
        return ListView.builder(
          itemCount: movies.length,
          itemBuilder: (_, int i) => _MovieItem(movies[i])
        
        );
      },
      
      );
  }


    Widget _EmptyContainer(){
      return Container(
        child: const Center(
          child: Icon(Icons.movie_creation_rounded,color: Colors.black38,size: 100,),
        ),
      );
    }

}

class _MovieItem extends StatelessWidget {
  final Movie movie;
  const _MovieItem(this.movie);

  @override
  Widget build(BuildContext context) {
    movie.heroId='search-${movie.id}';
    return ListTile(
      leading: Hero(
        tag: movie.heroId!,
        child: FadeInImage(
          placeholder: const AssetImage('assets/no-image.jpg'), 
          image: NetworkImage(movie.fullPosterImg),
          width: 50,
          fit: BoxFit.contain,
          ),
      ),
        title: Text(movie.title),
        subtitle: Text(movie.originalTitle),
        onTap: (){
          Navigator.pushNamed(context, 'details',arguments: movie);
        },
    );
  }
}