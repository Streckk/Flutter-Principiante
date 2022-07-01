import 'package:dise1/Contedores.dart';
import 'package:dise1/Dise%C3%B1os-habitos/cambiofisico.dart';
import 'package:dise1/Provider/habitos_provider.dart';
import 'package:dise1/encuesta.dart';
import 'package:dise1/encuesta2.dart';
import 'package:dise1/infohabito.dart';
import 'package:dise1/lib.dart';
import 'package:dise1/models/objetos_hab.dart';
import 'package:dise1/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ContenidoHabitos.dart';
import 'Diseños-habitos/alimentacion.dart';
import 'Diseños-habitos/home.dart';
import 'Diseños-habitos/lifestyle.dart';
import 'Diseños-habitos/salud_Mental.dart';
import 'ParteRegistroyLogin/RecuperarCuenta.dart';
import 'ParteRegistroyLogin/Registro.dart';
import 'ParteRegistroyLogin/Registropart2.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => HabitosProvider(),
      )
    ], child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'SplashView',
        routes: {
          'Principal': (BuildContext context) => const Principal(),
          'Registro': (BuildContext context) => Registro(),
          'RecuperarCuenta': (BuildContext context) => const RecuperarCuenta(),
          'Habitos': (BuildContext context) => const Habitos(),
          'bienestar': (BuildContext context) => const Bienestar(),
          'Calendario': (BuildContext context) => const Calendar(),
          'cambiofisico': (BuildContext context) => cambioFisico(),
          'alimentacion': (BuildContext context) => alimentacion(),
          'salud_Mental': (BuildContext context) => salud_Mental(),
          'home': (BuildContext context) => home(),
          'lifestyle': (BuildContext context) => lifestyle(),
          'contenedorHabito': (BuildContext context) => ContenidoH(),
          'infohabito': (BuildContext context) => Infohabito(),
          'encuesta2': (BuildContext context) => encuesta2(),
          'SplashView': (BuildContext context) => SplashView(),
        },
        home: Principal(),
        );
  }
}
