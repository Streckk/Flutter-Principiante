import 'package:dise1/ContenedorList.dart';
import 'package:dise1/ContenidoHabitos.dart';
import 'package:dise1/lib.dart';
import 'package:dise1/rutasNV.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Contedores.dart';
import 'dieseñodrawer.dart';
import 'listadrawer.dart';

class Habitos extends StatefulWidget {
  const Habitos({Key? key}) : super(key: key);
  
  @override
  State<Habitos> createState() => _HabitosState();
  
}

class _HabitosState extends State<Habitos> {
  int index=0;
  BarraN ?myBNB;

  @override
  void initState() {
    myBNB = BarraN(CurrenttIndex: (i){
      setState(() {
        index =i;
      });
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: rutas(index: index),
      bottomNavigationBar:  myBNB
    );
  }
}

