
import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: const [
            CustomCardType1(),
            SizedBox(height: 20,),
            CustomCardType2(imageUrl: 'https://media.sproutsocial.com/uploads/landscape-hero-bg-1.jpg',name: 'Un hermoso paisaje'),
            SizedBox(height: 20,),
            CustomCardType2(imageUrl: 'https://epsep.com.mx/wp-content/uploads/2020/10/travel-landscape-01.jpg'),
            SizedBox(height: 20,),
            CustomCardType2(imageUrl: 'http://cdn.eso.org/images/screen/millour-01-cc.jpg',name: 'Un hermoso paisaje'),
            SizedBox(height: 20,),
            CustomCardType2(imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            SizedBox(height: 100,),
        ],
      ),
    );
  }
}






