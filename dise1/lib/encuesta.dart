import 'package:flutter/material.dart';

class encuesta extends StatelessWidget {
  const encuesta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/fondoEncuesta2.png'),
          fit: BoxFit.cover)
        ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 300,),
              Text('Te damos la bienvenida a\n               tu encuesta',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(height: 200,),
                ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(40),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          minimumSize: MaterialStateProperty.all(const Size(300, 70)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'encuesta2');
                  }, 
                  child: Text('Empezar',style: TextStyle(color: Colors.indigo,fontSize: 25,fontWeight: FontWeight.bold),)
                  )
            ],
          ),
        ) 
      ),
    );
  }
}