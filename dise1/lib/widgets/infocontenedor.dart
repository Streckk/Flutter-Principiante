import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/habitos_provider.dart';
import '../models/objetos_hab.dart';

class Infocontenedor extends StatelessWidget {
  ObjetosHab diseh;
   Infocontenedor({Key? key,required this.diseh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return displayDialogAndroid(context);
  }
  displayDialogAndroid(BuildContext context) {
  final habitoProvider = Provider.of<HabitosProvider>(context);
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: ( context ) {
        return Container(
            margin: EdgeInsets.only(top: 190,bottom:0),
            width: 1000,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20), 
            ),
            child: Column(
              children: [
                Text(
                      diseh.para1,style: 
                      TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromRGBO(44, 96, 176, 1),),
                      ),
                ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          minimumSize: MaterialStateProperty.all(const Size(200, 70)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  onPressed: () {
                        Navigator.pushNamed(context, 'Habitos');
                  }, 
                  child: Text('Añadir Habito',style: TextStyle(color: Colors.indigo,fontSize: 15,fontWeight: FontWeight.bold),)
                  ),
              ],
            ),
          );
       
      }
    );
  }

}

 