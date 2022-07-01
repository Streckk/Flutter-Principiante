import 'package:dise1/dise%C3%B1orecetas/receta_B_C.dart';
import 'package:dise1/dise%C3%B1orecetas/receta_C_C.dart';
import 'package:dise1/dise%C3%B1orecetas/receta_H_A.dart';
import 'package:dise1/dise%C3%B1orecetas/receta_H_S.dart';
import 'package:dise1/dise%C3%B1orecetas/receta_L_P.dart';
import 'package:dise1/dise%C3%B1orecetas/receta_Y_F.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

  class recetas extends StatefulWidget {
    const recetas({Key? key}) : super(key: key);

    @override
    State<recetas> createState() => _recetasState();
  }

  class _recetasState extends State<recetas> {
    @override
    Widget build(BuildContext context) {
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/fondo.png'),
          fit: BoxFit.cover)
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Row(//Barra de busqueda
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 5, left: 10, right: 20),
                  width: MediaQuery.of(context).size.width-20,
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(221, 221, 221, 100),
                      borderRadius: BorderRadius.circular(100)
                      ),
                  
                  child: const TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black,
                      )
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(//Filtros Todo||Favoritos
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(//Boton de todo
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 1),
                        backgroundColor: const Color.fromRGBO(44, 96, 176, 100),
                      ),
                        onPressed:()=>{
                            print('todo'),
                          }, 
                          child: const Text('Todo',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                      const SizedBox(width: 50,),
                      OutlinedButton(//Boton de Favoritos
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 1),
                        backgroundColor: Colors.white,
                        
                      ),
                        onPressed:()=>{
                            print('Favoritos')
                          }, 
                          child: const Text('Favoritos',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                      )
                    ],
                  )
                ),
              ],
            ),
            Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: ListView(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    shrinkWrap: true,
                    children: [//Aqui empiezan los botones
                      Card(//Licuado Platano
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          side: const BorderSide(width: 1),
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed:()=>{
                            print('Licuado Platano'),
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Receta_L_P()))                         
                          }, 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text('Licuado de Platano', style: TextStyle(color: Colors.black,fontSize:20)),
                                const SizedBox(height: 20,),
                                const Text('Rico licuado de platano con avena\n y leche de tu preferencia', style: TextStyle(color: Colors.black,fontSize: 12)),
                                const SizedBox(height: 12,),
                                Row(
                                  children: <Widget>[
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,), 
                                      onRatingUpdate: (rating) {
                                        String res = "Rating licuado: $rating"; 
                                        print(res);
                                      },
                                    ),
                                    const SizedBox(width:20),
                                    const Text('Calorias\n350', style: TextStyle(color: Colors.black,fontSize: 8)),
                                    const SizedBox(width:20),
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 1,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ), 
                                      onRatingUpdate: (rating) {
                                        String res = "Favorito licuado: $rating"; 
                                        print(res);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset('assets/licuado_platano.png', ),
                              
                            ),
                          ],
                        ),
                        ),
                      ),
                      Card(//Yogurt con fruta
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child:OutlinedButton(          
                          style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          side: const BorderSide(width: 1),
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                          onPressed:()=>{
                            print('Yogurt con fruta'),
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Receta_Y_F()))   
                          },  
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text('Yogurt con fruta', style: TextStyle(color: Colors.black,fontSize:20)),
                                const SizedBox(height: 20,),
                                const Text('Yogurt griego sin azucar y bajo en \ngrasa en dulzado con frutos rojos', style: TextStyle(color: Colors.black,fontSize: 12)),
                                const SizedBox(height: 12,),
                                Row(
                                  children: <Widget>[
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,), 
                                      onRatingUpdate: (rating) {
                                        String res = "Rating yogurt con fruta: $rating"; 
                                        print(res);
                                      },
                                    ),
                                    const SizedBox(width:20),
                                    const Text('Calorias\n450', style: TextStyle(color: Colors.black,fontSize: 8)),
                                    const SizedBox(width:20),
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 1,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ), 
                                      onRatingUpdate: (rating) {
                                        String res = "Favorito yogurt con fruta: $rating"; 
                                        print(res);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset('assets/yogur_fruta.png', ),
                              
                            ),
                          ],
                        ),
                        ),
                      ),
                      Card(//Hotcakes de avena
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          side: const BorderSide(width: 1),
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                          onPressed:()=>{
                            print('hotcakes con avena'),
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Receta_H_A()))   
                          },   
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text('Hotcakes de avena', style: TextStyle(color: Colors.black,fontSize:20)),
                                const SizedBox(height: 20,),
                                const Text('Hotcakes hecho de avena quaker \nbajos en calorias sin harianas ', style: TextStyle(color: Colors.black,fontSize: 12)),
                                const SizedBox(height: 12,),
                                Row(
                                  children: <Widget>[
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,), 
                                      onRatingUpdate: (rating) {
                                        String res = "Rating hotcakes: $rating"; 
                                        print(res);
                                      },
                                    ),
                                    const SizedBox(width:20),
                                    const Text('Calorias\n230', style: TextStyle(color: Colors.black,fontSize: 8)),
                                    const SizedBox(width:20),
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 1,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ), 
                                      onRatingUpdate: (rating) {
                                        String res = "Favorito hotcakes: $rating"; 
                                        print(res);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset('assets/cakes_avena.png', ),
                              
                            ),
                          ],
                        ),
                        ),
                      ),
                      Card(//Batido de chocolate y avena
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          side: const BorderSide(width: 1),
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                          onPressed:()=>{
                            print('Batido de chocolate'),
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Receta_B_C()))   
                          },  
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text('Batido de chocolate ', style: TextStyle(color: Colors.black,fontSize:20)),
                                const SizedBox(height: 20,),
                                const Text('Un batido más que rico para\n reponer esas energías faltantes', style: TextStyle(color: Colors.black,fontSize: 12)),
                                const SizedBox(height: 12,),
                                Row(
                                  children: <Widget>[
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,), 
                                      onRatingUpdate: (rating) {
                                        String res = "Rating batido: $rating"; 
                                        print(res);
                                      },
                                    ),
                                    const SizedBox(width: 20,),
                                    const Text('Calorias\n500', style: TextStyle(color: Colors.black,fontSize: 8)),
                                    const SizedBox(width:20),
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 1,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ), 
                                      onRatingUpdate: (rating) {
                                        String res = "Favorito batido: $rating"; 
                                        print(res);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset('assets/batido_choco.png', ),                            
                            ),
                          ],
                        ),
                        ),
                      ),
                      Card(//Cafe con canela
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          side: const BorderSide(width: 1),
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                          onPressed:()=>{
                            print('cafe con canela'),
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Receta_C_C()))   
                          },  
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text('Cafe con canela', style: TextStyle(color: Colors.black,fontSize:20)),
                                const SizedBox(height: 20,),
                                const Text('La combinación perfecta entre el \ncafe y canela con mucha energía y \nlo más importante bajo en calorías', 
                                style: TextStyle(color: Colors.black,fontSize: 12)),
                                const SizedBox(height: 12,),
                                Row(
                                  children: <Widget>[
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,), 
                                      onRatingUpdate: (rating) {
                                        String res = "Rating cafe: $rating"; 
                                        print(res);
                                      },
                                    ),
                                    const SizedBox(width: 20,),
                                    const Text('Calorias\n70', style: TextStyle(color: Colors.black,fontSize: 8)),
                                    const SizedBox(width:20),
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 1,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ), 
                                      onRatingUpdate: (rating) {
                                        String res = "Favorito cafe: $rating"; 
                                        print(res);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset('assets/cafe_canela.png', ),
                              
                            ),
                          ],
                        ),
                        ),
                      ),
                      Card(//Helado saludable
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          side: const BorderSide(width: 1),
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                          onPressed:()=>{
                            print('helado saludable'),
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Receta_H_S()))   
                          },  
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text('Helado saludable', style: TextStyle(color: Colors.black,fontSize:20)),
                                const SizedBox(height: 20,),
                                const Text('Para un rico antojo alto en proteína', style: TextStyle(color: Colors.black,fontSize: 12)),
                                const SizedBox(height: 12,),
                                Row(
                                  children: <Widget>[
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,), 
                                      onRatingUpdate: (rating) {
                                        String res = "Rating helado: $rating"; 
                                        print(res);
                                      },
                                    ),
                                    const SizedBox(width: 20,),
                                    const Text('Calorias\n350', style: TextStyle(color: Colors.black,fontSize: 8)),
                                    const SizedBox(width:20),
                                    RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 1,
                                      itemSize: 20,
                                      itemBuilder: (context, _) => 
                                        const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ), 
                                      onRatingUpdate: (rating) {
                                        String res = "Favorito helado: $rating"; 
                                        print(res);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset('assets/helado_saludable.png', ),
                              
                            ),
                          ],
                        ),
                        ),
                      ),
              ],
            ),
                )
            )
          ],
          ),
        ),
      );
    }
  }

