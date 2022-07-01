import 'dart:async';
import 'package:dise1/Habitos.dart';
import 'package:dise1/lib.dart';
import 'package:dise1/shared_preferences_service.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> {
  final PrefService _prefService = PrefService();

  @override
  void initState() {
    _prefService.readCache("correo").then((value) {
      print(value.toString());
      if (value != null) {
        return Timer(Duration(seconds: 2),
            () => Navigator.of(context).pushNamed('Habitos'));
      } else {
        return Timer(Duration(seconds: 2),
            () => Navigator.of(context).pushNamed('Principal'));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset('assets/logohabits12.png'),
      ),
      backgroundColor: Colors.white,
      );
  }
}
