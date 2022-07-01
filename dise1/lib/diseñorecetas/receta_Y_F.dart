import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class Receta_Y_F extends StatefulWidget {
  const Receta_Y_F({Key? key}) : super(key: key);

  @override
  State<Receta_Y_F> createState() => _Receta_Y_F_State();
}
 
class _Receta_Y_F_State extends State<Receta_Y_F> {
  List<String> imagenes = [
    "https://images-gmi-pmc.edge-generalmills.com/d784ae83-f64c-486d-933b-100537106cd0.jpg",
    "https://www.cocinayvino.com/wp-content/uploads/2013/03/43566779_ml-e1484938680804.jpg",
    "https://www.cocinayvino.com/wp-content/uploads/2013/03/43567109_ml-e1484938743938.jpg",
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
                        'Yogurt con fruta',
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
                        '1 taza de Yogur griego\n1/2 taza de la fruta de tu preferencia (fresas, plátano, arándanos)',
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
                      'En una taza con yogur griego se agregan la fruta en trozos pequeños.',
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
                        '225 calorias',
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
