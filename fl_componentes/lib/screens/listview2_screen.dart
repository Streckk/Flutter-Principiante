import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   final opciones = ['Megaman','Metal gear','Super Smash','Final Fantasy'];

   Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Lisview tipo 2',)),
        
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.indigo,),
          title: Text(opciones[index]),
          onTap: (){

          },
          ),
        itemCount: opciones.length,
        separatorBuilder: (_, __) =>const Divider(),
      )
    );
  }
}