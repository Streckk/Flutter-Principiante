import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'Provider/habitos_provider.dart';
import 'widgets/disehabito.dart';

class Contenedor extends StatelessWidget {
  Contenedor({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final habitoProvider = Provider.of<HabitosProvider>(context);
    return habitoProvider.arregloh.length == 0
        ? SingleChildScrollView(
          child: Column(
              children: const <Widget>[
                 SizedBox(
                  height: 15,
                ),
                 Text(
                  'No hay habitos',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                 Text(
                  'Añade uno',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                 Icon(
                  Icons.arrow_downward,
                  size: 50,
                  color: Colors.white,
                ),
              ],
            ),
        )
        : ListView.builder(
            itemCount: habitoProvider.arregloh.length,
            itemBuilder: (_, index) {
              return Disehabito(
                diseh: habitoProvider.arregloh[index],
              );
            }
            
            );
  }
}
