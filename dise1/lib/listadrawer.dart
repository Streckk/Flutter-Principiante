import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class listadrawer extends StatelessWidget {
  const listadrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        menuItem()
      ],

    );
  }
}

Widget menuItem(){
  return Material(
    child: InkWell(
      onTap: () {
      },
      child: Padding(padding: const EdgeInsets.all(15.0),
      child: Row(
        children: const[
          Expanded(child: Icon(Icons.logout,size: 20,color: Colors.black,)),
          Expanded(flex: 1 ,child: Text('Salir',style: TextStyle(color: Colors.black,fontSize: 16),)),
        ],
      ),
      ),
    ),
  );
}