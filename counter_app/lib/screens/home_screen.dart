import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador=0;
  void increase(){
    setState(() {
      contador++;
    });
  }
  void cero(){
    setState(() {
      contador=0;
    });
  }
  void dencrease(){
    setState(() {
      contador--;
    });
  }
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30=const TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('HomeScreen')),
        elevation: 20,
      ),
      backgroundColor: Colors.blueGrey,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Text('Numero de clicks',style: fontSize30,),
            Text('$contador',style: fontSize30,),
          ],
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  CustomFloatingActions(
        increaseFn:increase,
        ceroFn:cero,
        dencreaseFn:dencrease,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function dencreaseFn;
  final Function ceroFn;
   const CustomFloatingActions({
    Key? key,required this.increaseFn, required this.dencreaseFn, required this.ceroFn
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        FloatingActionButton(
        onPressed: () => increaseFn(),
        child:  const Icon(Icons.add),
      ),
      FloatingActionButton(
        onPressed: () => ceroFn(),
        child:  const Icon(Icons.exposure_outlined),
      ),
      FloatingActionButton(
        onPressed: () => dencreaseFn(),
        child: const Icon(Icons.exposure_minus_1_outlined),
      ),
      
      ],
    );
  }
}