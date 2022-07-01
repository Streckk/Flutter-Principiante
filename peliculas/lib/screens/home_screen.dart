import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../search/sear_delegate.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    print(moviesProvider.onDisplayMovies);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cines'),
        elevation: 15,
        actions: [
          IconButton(
            onPressed: ()=>showSearch(
              context: context, 
              delegate: MovieSearchDelegate()
              ), 
            icon: const Icon(Icons.search_outlined)
            )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
                CardSwiper(movies: moviesProvider.onDisplayMovies),
                MovieSlider(movies: moviesProvider.popularMovies,title: 'Populares!',
                onNextPage: ()=>moviesProvider.getPopularMovies()),
                
      
          ]
        ),
      ),
    );
  }
}