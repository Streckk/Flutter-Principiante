import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peliculas/models/models.dart';
import 'package:provider/provider.dart';

import '../providers/movies_provider.dart';

class CastingCard extends StatelessWidget {
   final int  movieidl;
  const CastingCard({Key? key, required this.movieidl}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);

    return FutureBuilder(
      future: moviesProvider.getMoviesCast(movieidl),
      
      builder: (_,AsyncSnapshot <List<Cast>>snapshot) {
        if(!snapshot.hasData){
          return Container(
            constraints: BoxConstraints(maxWidth: 150),
            height: 180,
            child: CupertinoActivityIndicator(),
          );
        }
        final cast= snapshot.data!;
      return Container(
      margin: const EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index)=> _CastCard(actor: cast[index]),
      ),
        );
      }
    );
    
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard({Key? key, required this.actor}) : super(key: key);
  final Cast actor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child:  FadeInImage(
              placeholder:const AssetImage('assets/no-image.jpg'), 
              image: NetworkImage(actor.fullprofilePath
              ),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
              ),
          ),
          SizedBox(height: 5,),
          Text(actor.name,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,)
        ],
      )
    );
  }
}