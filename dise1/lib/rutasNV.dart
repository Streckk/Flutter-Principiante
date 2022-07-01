import 'package:dise1/ContenidoHabitos.dart';
import 'package:dise1/Habitos.dart';
import 'package:dise1/calendar.dart';
import 'package:dise1/encuesta.dart';
import 'package:dise1/lib.dart';
import 'package:flutter/material.dart';

class rutas extends StatelessWidget {
  final int index;
  const rutas({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> paginas =[
      const ContenidoH(),
      const Calendar(),
      const recetas(),
      const encuesta()
    ];
    return paginas[index];
  }
}