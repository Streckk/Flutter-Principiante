import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
 

class Receta_C_C extends StatefulWidget {
  const Receta_C_C({Key? key}) : super(key: key);

  @override
  State<Receta_C_C> createState() => _Receta_C_C_State();
}
 
class _Receta_C_C_State extends State<Receta_C_C> {
  List<String> imagenes = [
    "https://www.todosobrecafe.com/wp-content/uploads/2020/05/receta-de-canela-con-caf%C3%A9.jpg",
    "https://a.storyblok.com/f/120479/95d2d8ddd3/istock-120705235ok-1-1.jpg",
    "https://laopinion.com/wp-content/uploads/sites/3/2020/06/shutterstock_99105815.jpg?quality=80&strip=all&w=1200",
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
                        'Cafe con canela',
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
                        'Agua\nCafé soluble\nCanela',
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
                      'Hervir un poco de agua con unos trozos de canela. Una vez que hierva se agrega el café soluble. ',
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
                        '10 calorias',
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