import 'package:flutter/material.dart';

class AppTheme{
  static const Color Primario = Colors.indigo;

      static  ThemeData lightTema =ThemeData.light().copyWith(
        //Tema AppBar
        appBarTheme: const AppBarTheme(
          color: Colors.indigo
        )
      );

  
}