import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
            const ListTile(
              leading: Icon(Icons.photo_album_outlined,color: AppTheme.Primario,),
              title: Text('Soy un titulo'),
              subtitle: Text('Ipsum culpa qui pariatur duis incididunt adipisicing ullamco nisi ex laborum occaecat cillum quis. Qui velit ex do nisi adipisicing velit et eiusmod excepteur. Mollit deserunt aliquip aliqua aute occaecat excepteur.'),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  TextButton(
                    onPressed: (){}, 
                    child: const Text('Cancelar')
                    ),
                    TextButton(
                    onPressed: (){}, 
                    child:  const Text('Ok')
                    ),
                ],
              ),
            )
        ],
      ),
    );
  }
}