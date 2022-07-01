import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   final opciones = ['Megaman','Metal gear','Super Smash','Final Fantasy'];

   Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Lisview tipo 1'),
      ),
      body: ListView(
        children:  <Widget>[
            ...opciones.map((game) => 
            ListTile(
              title: Text('$game'),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              )).toList(),
              
        ],
      )
    );
  }
}