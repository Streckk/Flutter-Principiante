import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
 

class Receta_H_S extends StatefulWidget {
  const Receta_H_S({Key? key}) : super(key: key);

  @override
  State<Receta_H_S> createState() => _Receta_H_S_State();
}
 
class _Receta_H_S_State extends State<Receta_H_S> {
  List<String> imagenes = [
    "https://i.blogs.es/103579/helado-platano-cacahuete1/450_1000.jpg",
    "https://www.pequerecetas.com/wp-content/uploads/2015/08/helado-platano-660x640.jpg",
    "https://www.pequeocio.com/wp-content/uploads/2015/05/helado-de-platano-facil-800x717.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: _swiper(),
            ),
            Container(
              width: 400,
              height: 550,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 2)),
              child: Column(
                children: const [
                  Align(
                      alignment: Alignment(-0.7, 0),
                      child: Text(
                        'Helado saludable',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment(-0.7, 0),
                      child: Text(
                        'Publicado 16/03/2022',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                        textAlign: TextAlign.left,
                      )),
                  Align(
                      alignment: Alignment(0.9, 0),
                      child: Icon(
                        Icons.favorite_border,
                        size: 40,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment(-0.8, 0),
                    child: Text(
                      'Ingredientes',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment(-0.8, 0),
                      child: Text(
                        '3 plátanos maduros (entre más maduras más dulces)\n1/4 de taza de leche\n2 cucharadas de vainilla\n2 cucharadas de cacao en polvo',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment(-0.8, 0),
                      child: Text(
                        'Preparación',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: Text(
                      'Pelar y partir el plátano en pequeñas piezas para meterlos al congelador por unas 3 horas. Al pasar las 3 horas se sacan del congelador y se ponen en la licuadora junto a la leche y el cacao, licuamos todo y lo pasamos a un recipiente para meterlo al congelador unas horas más',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Align(
                      alignment: Alignment(-0.8, 0),
                      child: Text(
                        'Contenido Calorico',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  Align(
                      alignment: Alignment(-0.8, 0),
                      child: Text(
                        '500 calorias',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _swiper() {
    return Container(
      width: double.infinity,
      height: 350,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            imagenes[index],
            fit: BoxFit.cover,
          );
        },
        itemCount: imagenes.length,
        pagination: SwiperPagination(),
      ),
    );
  }
}