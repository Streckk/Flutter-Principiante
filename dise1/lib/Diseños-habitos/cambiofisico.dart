import 'package:dise1/widgets/infocontenedor.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../Provider/habitos_provider.dart';
import '../models/objetos_hab.dart';

class cambioFisico extends StatefulWidget {
  
  cambioFisico({Key? key,}) : super(key: key);
  
  @override
  State<cambioFisico> createState() => _cambioFisicoState();
}

class _cambioFisicoState extends State<cambioFisico> {
  var selecfecha= DateTime.now();
  var selechora=TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    final habitoProvider = Provider.of<HabitosProvider>(context);
    return Scaffold(
    body: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 560,
          color: const Color.fromRGBO(246, 168, 202, 1),
          child: const Center(
            child: Text(
              'Cambio fisico',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: ListView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                shrinkWrap: true,
                children: [
                  Card(
                    child: SizedBox(
                    width: 320,
                    height: 90,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        
                          side: const BorderSide(width: 0,color: Colors.white),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                          ),
                      onPressed: () {
                       displayDialogAndroid(context,ObjetosHab(
                            para1: 'Moverme 30 minutos', para2: 'Salir de mi habitación a caminar un rato\npara despegarse de algun problema',
                             para3: 'Cambio fisico',para4: '',para5: '',para6: 'Racha'));
                        
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/cambio_fisico2.png'),
                              
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Moverme 30 minutos',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                            'Más información',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 8),
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    
                    ),
                  ),
                  Card(
                    child: SizedBox(
                    width: 320,
                    height: 90,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(width: 0,color: Colors.white),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                          ),
                      onPressed: () {
                        displayDialogAndroid(context,ObjetosHab(
                            para1: 'Salir a correr', para2: 'Salir al exterior a ejercitarse\nunpoco',
                             para3: 'Cambio fisico',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/cambio_fisico2.png'),
                              
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Salir a correr',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                            'Más información',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 8),
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                    width: 320,
                    height: 90,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        
                          side: const BorderSide(width: 0,color: Colors.white),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                          ),
                      onPressed: () {
                        displayDialogAndroid(context,ObjetosHab(
                            para1: 'Ir al gimnasio', para2: 'Ejercitate un poco y mantener o mejor ese fisico',
                             para3: 'Cambio fisico',para4: '',para5: '',para6: 'Racha'));

                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/cambio_fisico2.png'),
                              
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Ir al gimnasio',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                            'Más información',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 8),
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                    width: 320,
                    height: 90,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        
                          side: const BorderSide(width: 0,color: Colors.white),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                          ),
                      onPressed: () {

                        displayDialogAndroid(context,ObjetosHab(
                            para1: 'Salir a trotar', para2: 'Un poco de ejercicio por un rato es bueno',
                             para3: 'Cambio fisico',para4: '',para5: '',para6: 'Racha'));
                       
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/cambio_fisico2.png'),
                              
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Salir a trotar',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                            'Más información',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 8),
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                    width: 320,
                    height: 90,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        
                          side: const BorderSide(width: 0,color: Colors.white),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                          ),
                      onPressed: () {
                         displayDialogAndroid(context,ObjetosHab(
                            para1: 'Hacer caminadora', para2: 'Un poco de ejercicio por un rato es bueno',
                             para3: 'Cambio fisico',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/cambio_fisico2.png'),
                              
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Hacer caminadora',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                            'Más información',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 8),
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                    width: 320,
                    height: 90,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        
                          side: const BorderSide(width: 0,color: Colors.white),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                          ),
                      onPressed: () {

                        displayDialogAndroid(context,ObjetosHab(
                            para1: 'Hacer ejercicios de estiramiento', para2: 'Antes de comenzar el entrenamiento es bueno\nun estiramiento'
                            ,
                             para3: 'Cambio fisico',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/cambio_fisico2.png'),
                              
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Hacer ejercicios de \nestiramiento',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                            'Más información',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 8),
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                    width: 320,
                    height: 90,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        
                          side: const BorderSide(width: 0,color: Colors.white),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                          ),
                      onPressed: () {

                        displayDialogAndroid(context,ObjetosHab(
                            para1: 'Hacer 10 burpees', para2: 'Nada mejor que unos burpees para calentar el cuerpo y \nmantener esos niveles de sangre',
                             para3: 'Cambio fisico',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/cambio_fisico2.png'),
                              
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Hacer 10 burpees',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                            'Más información',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 8),
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                ]),
          ),
        ),
      ],
    ),
    );
  }
  void displayDialogAndroid(BuildContext context,ObjetosHab df) {
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: ( context ) {
        final habitoProvider = Provider.of<HabitosProvider>(context);
        return Container(
            margin: EdgeInsets.only(top: 190,bottom:0),
            width: 1000,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30), 
            ),
            child: Scaffold(
              body: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    Text(df.para1,style: TextStyle(fontSize: 20,color: Color.fromRGBO(246, 168, 202, 1),fontWeight: FontWeight.bold),),
                    const SizedBox(height: 30,),
                    Text(df.para2,style: TextStyle(fontSize: 15,color: Colors.grey)),
                    const SizedBox(height: 30,),
                    Text(df.para3,style: TextStyle(fontSize: 20,color: Color.fromRGBO(246, 168, 202, 1),fontWeight: FontWeight.bold)),
                    const SizedBox(height: 30,),
                    ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(20),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              minimumSize: MaterialStateProperty.all(const Size(100, 70)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      onPressed: calldate, 
                      child: const Text('Agrega tu fecha',style: TextStyle(color: Color.fromRGBO(246, 168, 202, 1),fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                      const SizedBox(height: 30,),
                      Text("$selecfecha"),
                      const SizedBox(height: 30,),
                      ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(20),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              minimumSize: MaterialStateProperty.all(const Size(100, 70)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      onPressed: calltime, 
                      child: const Text('Agregar Hora',style: TextStyle(color: Color.fromRGBO(246, 168, 202, 1),fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                      const SizedBox(height: 30,),
                      Text("$selechora"),
                      const SizedBox(height: 30,),
                      Text(df.para6),
                      const SizedBox(height: 30,),
                    ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(20),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              minimumSize: MaterialStateProperty.all(const Size(100, 70)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      onPressed: () {
                        habitoProvider.agregarhabito(ObjetosHab(
                            para1: df.para1, para2: df.para2, para3: df.para3,para4: 'Fecha Seleccionada:$selecfecha',para5: 'Hora Seleccionada:$selechora',para6: df.para6));
                            Navigator.pushNamed(context, 'Habitos');
                      }, 
                      child: const Text('Añadir Habito',style: TextStyle(color: Color.fromRGBO(246, 168, 202, 1),fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                      const SizedBox(height: 30,),
                  ],
                            ),
                ),
              ),
            )
          );
       
      }
    );
  }

  void calldate() async{
    var seleccionfecha= await getFecha();
    setState((){
      selecfecha=seleccionfecha;
    });
  }

  void calltime() async{
    var selecciontime=await getHora();
    setState(() {
      selechora=selecciontime;
    });
  }
   getFecha()async {
  return showDatePicker(
    context: context, 
    initialDate: selecfecha, 
    firstDate: DateTime(2022), 
    lastDate:  DateTime(2023), 
    builder: (context,child){
      return Theme(data: ThemeData.dark(), child: child!);
    }
  );
 }
  getHora()async {
  return showTimePicker(
    context: context,
    initialTime: selechora,
    builder: (context,child){
      return Theme(data: ThemeData.dark(), child: child!);
    }
  );
 }
}
