import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class Receta_L_P extends StatefulWidget {
  Receta_L_P({Key? key}) : super(key: key);
  @override
  State<Receta_L_P> createState() => _Receta_L_P_State();
}

class _Receta_L_P_State extends State<Receta_L_P> {
  List<String> imagenes = [
    "https://s3.amazonaws.com/nv-almadechef/recetas/a/licuado-de-banana_900x600.jpg",
    "https://www.mexicoenmicocina.com/wp-content/uploads/2018/01/licuado-de-platano-1-468x375.jpg",
    "https://www.paulinacocina.net/wp-content/uploads/2022/01/licuado-de-banana.jpg",
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
                        'Licuado de platano',
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
                        '1/2 platano\n1/2 taza de avena\n1 taza de leche',
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
                      'En la licuadora agregar la mitad de un platano al igual\nque la avena y la taza de leche,se licuan todos los\ningredientes, los pasas a un vaso y listo.',
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
                        '350 calorias',
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
