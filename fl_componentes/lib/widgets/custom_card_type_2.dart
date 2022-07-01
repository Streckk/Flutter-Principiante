import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({Key? key, required this.imageUrl, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ) ,
      clipBehavior: Clip.antiAlias,
      shadowColor: AppTheme.Primario,
      child: Column(
        children:   [
           FadeInImage(
            image:  NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/carga.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const  Duration(milliseconds: 500),
            ),
            if(name!=null)
            Container(
              padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
              alignment: AlignmentDirectional.centerEnd,
              child:  Text(name!),
              
              ),
        ],
      ),
    );
  }
}