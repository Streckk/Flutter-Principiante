import 'package:flutter/material.dart';
import 'package:peliculas/models/models.dart';
import 'package:peliculas/theme/app_theme.dart';
import 'package:peliculas/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  
  const DetailsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final Movie movie= ModalRoute.of(context)!.settings.arguments as Movie;
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(movie: movie),
          SliverList(
            delegate: SliverChildListDelegate([
                _PosterAndTitle(movie: movie),
                _Overview(movie: movie),
                _Overview(movie: movie),
                _Overview(movie: movie),
                CastingCard(movieidl: movie.id,)
                
              ])
            ),
        ],
      )
    );
  }
}


class _CustomAppBar extends StatelessWidget {
  final Movie movie;

  const _CustomAppBar({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10), 
           child: Text(movie.title,textAlign: TextAlign.center,),
        ),
        background:  FadeInImage(
          placeholder:  const AssetImage('assets/loading.gif'), 
          image: NetworkImage(movie.fullbackdropPath),
          fit: BoxFit.cover,
          ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
final Movie movie;

  const _PosterAndTitle({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Hero(
            tag: movie.heroId!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:  FadeInImage(
                placeholder:const AssetImage('assets/no-image.jpg'), 
                image: NetworkImage(movie.fullPosterImg),
                height: 150,
                fit: BoxFit.cover,
                ),
            ),
          ),
          const SizedBox(width: 20,),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: size.width-190),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          
                Text(movie.title,style: AppTheme.lightTema.textTheme.headline5,overflow: TextOverflow.ellipsis,maxLines: 2,),
                
                Text(movie.originalTitle,style: AppTheme.lightTema.textTheme.subtitle1,overflow: TextOverflow.ellipsis,maxLines: 2,),
                Row(
                  children: [
                    const Icon(Icons.star_outline,size: 15,color: Colors.grey,),
                   const SizedBox(width: 5,),
                    Text('${movie.voteAverage}',style: AppTheme.lightTema.textTheme.caption,)
                  ],
                )
               ],
            ),
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  final Movie movie;
  const _Overview({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:  Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Text(movie.overview,
        textAlign: TextAlign.justify,style: AppTheme.lightTema.textTheme.subtitle1,
        )),
    );
  }
}