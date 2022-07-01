import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class Receta_H_A extends StatefulWidget {
  const Receta_H_A({Key? key}) : super(key: key);

  @override
  State<Receta_H_A> createState() => _Receta_H_A_State();
}
 
class _Receta_H_A_State extends State<Receta_H_A> {
  List<String> imagenes = [
    "https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2018/10/hot-cakes-de-avena-saludables.jpeg",
    "https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2018/10/receta-facil-de-hot-cakes-de-avena2.jpg",
    "https://storage.googleapis.com/avena-recipes/agtzfmF2ZW5hLWJvdHIZCxIMSW50ZXJjb21Vc2VyGICAgICa8YQKDA/21-01-2020/1579643757299.jpeg",
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
                        'Hotcakes de avena',
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
                        '3 plátanos mediados\n120 gramos de copos de avena\n100 mililitros de leche-esencia de vainilla o ralladura de limón o naranja\n1 cucharada de margarina\n2 cucharadas de azúcar moreno',
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
                    alignment: Alignment(0,0),
                    child: Text(
                      '1 Mezcla los plátanos, la avena previamente molida, la leche, el aroma de vainilla y el azúcar hasta obtener una masa cremosa y uniforme\n2 Pon a calentar una sartén antiadherente. Una vez caliente, añade una pizca de margarina y echa dos cucharadas de la masa. Cuando en la masa aparezcan pequeños agujeros, voltea',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
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
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment(-0.8, 0),
                      child: Text(
                        '420 calorias',
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