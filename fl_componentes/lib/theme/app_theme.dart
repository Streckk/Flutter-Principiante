import 'package:flutter/material.dart';

class AppTheme{
    static const Color Primario = Colors.indigo;

    static  ThemeData lightTema = ThemeData.light().copyWith(
        //color primario
        primaryColor: Colors.indigo,
        //appbar tema
        appBarTheme: const AppBarTheme(
          backgroundColor: Primario,
          elevation: 10
        ),
        //textbutton tema
        textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: Primario)),

        //floatingactionbutton tema
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Primario
        ),
        //elevalatedbuttom tema
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          primary: Primario,
          shape: const StadiumBorder(),
          elevation: 20
        )
        ),

        //TextfromFiel tema
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: Primario),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Primario),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Primario),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
          ),
        ),
      );

     static  ThemeData darkTema = ThemeData.dark().copyWith(
        //color primario
        primaryColor: Colors.indigo,
        //appbar tema
        appBarTheme: const AppBarTheme(
          backgroundColor: Primario,
          elevation: 10
        )
        
      ); 



}