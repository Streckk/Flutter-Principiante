import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/habitos_provider.dart';
import '../models/objetos_hab.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);
  
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
          color: const Color.fromRGBO(218, 99, 83, 1),
          child: const Center(
            child: Text(
              'Hogar',
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
                            para1: 'Haz la cama nada más levantarte', para2: 'Este habito sera parte en ti en algunos dias mas',
                             para3: 'Hogar',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/home2.png'),
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Haz la cama nada más \nlevantarte',
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
                            para1: 'Limpia tu espacio de trabajo', para2: 'Este habito sera parte en ti en algunos dias mas',
                             para3: 'Hogar',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/home2.png'),
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Limpia tu espacio de \ntrabajo',
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
                            para1: 'Cambiar cada semana las sabanas', para2: 'Ayudara a ser un poco mas limpio con tu higiene',
                             para3: 'Hogar',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/home2.png'),
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Cambiar cada semana las \nsabanas',
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
                            para1: 'Ordena tu mochila antes de irte a dormir', para2: 'Preparar las cosas antes del dia mañana',
                             para3: 'Hogar',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/home2.png'),
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Ordena tu mochila antes de\n irte a dormir',
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
                            para1: 'Lava los trastes despues de comer', para2: 'Ayudara a mantener tu cocina más limpia',
                             para3: 'Hogar',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/home2.png'),
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Lava los trastes \ndespues de comer',
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
                    Text(df.para1,style: TextStyle(fontSize: 20,color: Color.fromRGBO(218, 99, 83, 1),fontWeight: FontWeight.bold),),
                    const SizedBox(height: 30,),
                    Text(df.para2,style: TextStyle(fontSize: 15,color: Colors.grey)),
                    const SizedBox(height: 30,),
                    Text(df.para3,style: TextStyle(fontSize: 20,color: Color.fromRGBO(218, 99, 83, 1),fontWeight: FontWeight.bold)),
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
                      child: const Text('Agrega tu fecha',style: TextStyle(color: Color.fromRGBO(218, 99, 83, 1),fontSize: 20,fontWeight: FontWeight.bold),)
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
                      child: const Text('Agregar Hora',style: TextStyle(color: Color.fromRGBO(218, 99, 83, 1),fontSize: 20,fontWeight: FontWeight.bold),)
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
                      child: const Text('Añadir Habito',style: TextStyle(color: Color.fromRGBO(218, 99, 83, 1),fontSize: 20,fontWeight: FontWeight.bold),)
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
  Future getFecha()async {
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
 Future getHora()async {
  return showTimePicker(
    context: context,
    initialTime: selechora,
    builder: (context,child){
      return Theme(data: ThemeData.dark(), child: child!);
    }
  );
 }
}
