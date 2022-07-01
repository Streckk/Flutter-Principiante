import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
      showCupertinoDialog(
        barrierDismissible: false,
        context: context, 
        builder: (context) {
          return CupertinoAlertDialog(
              title:   Text('Titulo'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Este es el contenido de la alerta'),
                  SizedBox(height: 10,),
                  FlutterLogo(size: 100),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: ()=>Navigator.pop(context), 
                  child: const Text('Cancelar',style: TextStyle(color: Colors.red),)
                  ),
                  TextButton(
                  onPressed: ()=>Navigator.pop(context), 
                  child: const Text('Ok',)
                  ),
              ],
          );
        }
        );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(

      barrierDismissible: false,
      context: context, 
      builder: (context) {
          return  AlertDialog(
              elevation: 10,
              title:  const Text('Titulo'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Este es el contenido de la alerta'),
                  SizedBox(height: 10,),
                  FlutterLogo(size: 100),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: ()=>Navigator.pop(context), 
                  child: const Text('Cancelar')
                  ),
              ],
          );
      }
      );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Alert Screen'),
      ),
      body:  Center(
         child: ElevatedButton(
          child: const  Text('Mostrar alerta'),
          onPressed: ()=> Platform.isAndroid 
          ?displayDialogAndroid(context) : displayDialogIOS(context)
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      
      )
    );
  }
}