import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/habitos_provider.dart';
import '../models/objetos_hab.dart';

class salud_Mental extends StatefulWidget {
  salud_Mental({Key? key}) : super(key: key);
  
  @override
  State<salud_Mental> createState() => _salud_MentalState();
}

class _salud_MentalState extends State<salud_Mental> {
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
          color: const Color.fromRGBO(98, 162, 254, 1),
          child: const Center(
            child: Text(
              'Salud Mental',
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
                            para1: 'Di en voz alta 5 cosas positivas sobre ti', para2: 'Es bueno expresarse y saber lo que piensa uno\nde si mismo',
                             para3: 'Salud Metal',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/salud_mental2.png'),
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Di en voz alta 5 cosas \npositivas sobre ti',
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
                            para1: 'Realiza 30 minutos de algun hobbie', para2: 'Expresar tu hobbie te ayuda ser más creativo',
                             para3: 'Salud Metal',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/salud_mental2.png'),
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Realiza 30 minutos \nde algun hobbie',
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
                            para1: '3 minutos de ejercicios de respiración', para2: 'Tranquilo solo respira y mantente cuerdo',
                             para3: 'Salud Metal',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/salud_mental2.png'),
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                '3 minutos de ejercicios \nde respiración',
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
                            para1: 'Habla 5 minutos con alguien cercano', para2: 'Expresarse con alguien mas es bueno y no solo contigo',
                             para3: 'Salud Metal',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/salud_mental2.png'),
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Habla 5 minutos con \nalguien cercano',
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
                            para1: 'Mira un capitulo de una serie que \nte guste(De preferencia comedia)', para2: 'De vez en cuando hay que darse cierto gustos',
                             para3: 'Salud Metal',para4: '',para5: '',para6: 'Racha'));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/salud_mental2.png'),
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 20),
                              Text(
                                'Mira un capitulo de una \nserie que te guste',
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
                    Text(df.para1,style: TextStyle(fontSize: 20,color: Color.fromRGBO(98, 162, 254, 1),fontWeight: FontWeight.bold),),
                    const SizedBox(height: 30,),
                    Text(df.para2,style: TextStyle(fontSize: 15,color: Colors.grey)),
                    const SizedBox(height: 30,),
                    Text(df.para3,style: TextStyle(fontSize: 20,color: Color.fromRGBO(98, 162, 254, 1),fontWeight: FontWeight.bold)),
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
                      child: const Text('Agrega tu fecha',style: TextStyle(color: Color.fromRGBO(98, 162, 254, 1),fontSize: 20,fontWeight: FontWeight.bold),)
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
                      child: const Text('Agregar Hora',style: TextStyle(color: Color.fromRGBO(98, 162, 254, 1),fontSize: 20,fontWeight: FontWeight.bold),)
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
                      child: const Text('Añadir Habito',style: TextStyle(color: Color.fromRGBO(98, 162, 254, 1),fontSize: 20,fontWeight: FontWeight.bold),)
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
