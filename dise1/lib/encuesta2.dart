import 'package:flutter/material.dart';

class encuesta2 extends StatefulWidget {
  const encuesta2({Key? key}) : super(key: key);

  @override
  State<encuesta2> createState() => _encuesta2State();
}

class _encuesta2State extends State<encuesta2> {
  List<String> items=['Nunca','Varios días','Muchos días','Casi todos los días'];
  String? selectedItem='Nunca';
  String? selectedItem2='Nunca';

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/fondoEncuesta2.png'),
          fit: BoxFit.cover)
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
          body: Column(
            children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Align(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 80,),
                          Text('¿Tienes poco interés en hacer tus tareas \no en tu carrera en general?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                        SizedBox(height: 20,),
                        SizedBox(
                                      height: 57,
                                      width: 340,
                                      child: DropdownButtonFormField<String>(
                      value: selectedItem,
                      iconSize: 40,
                      iconEnabledColor: Colors.black,
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                      elevation: 40,
                      isExpanded: false,
                      decoration:InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                      ),
                      items: items.map((item) => DropdownMenuItem<String>(
                                
                        value: item,child: Text(item,style: TextStyle(fontSize: 18),)
                        )
                        ).toList(),
                        onChanged: (item)=>setState(() =>selectedItem = item,
                        ),
                        ),),
                              
                        SizedBox(height: 20,),
                          Text('¿Te has llegado a sentir desanimado/a o triste durante tus clases?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                                SizedBox(height: 20,),
                            SizedBox(
                                      height: 57,
                                      width: 340,
                                      child: DropdownButtonFormField<String>(
                      value: selectedItem,
                      iconSize: 40,
                      iconEnabledColor: Colors.black,
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                      elevation: 40,
                      isExpanded: false,
                      decoration:InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                       
                        
                      ),
                      items: items.map((item) => DropdownMenuItem<String>(
                                
                        value: item,child: Text(item,style: TextStyle(fontSize: 18),)
                        )
                        ).toList(),
                        onChanged: (item)=>setState(() =>selectedItem = item,
                        ),
                        ),
                        ),
                              
                          SizedBox(height: 20,),
                          Text('¿Tienes problemas para dormir o te desvelas mucho?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                                SizedBox(height: 20,),
                            SizedBox(
                                      height: 57,
                                      width: 340,
                                      child: DropdownButtonFormField<String>(
                      value: selectedItem,
                      iconSize: 40,
                      iconEnabledColor: Colors.black,
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                      elevation: 40,
                      isExpanded: false,
                      decoration:InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                       
                        
                      ),
                      items: items.map((item) => DropdownMenuItem<String>(
                                
                        value: item,child: Text(item,style: TextStyle(fontSize: 18),)
                        )
                        ).toList(),
                        onChanged: (item)=>setState(() =>selectedItem = item,
                        ),
                        ),
                        ),
                              
                            SizedBox(height: 20,),
                          Text('¿Te sientes cansado/a o con poca energía durante buena parte del día?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                                SizedBox(height: 20,),
                            SizedBox(
                                      height: 57,
                                      width: 340,
                                      child: DropdownButtonFormField<String>(
                      value: selectedItem,
                      iconSize: 40,
                      iconEnabledColor: Colors.black,
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                      elevation: 40,
                      isExpanded: false,
                      decoration:InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                       
                        
                      ),
                      items: items.map((item) => DropdownMenuItem<String>(
                                
                        value: item,child: Text(item,style: TextStyle(fontSize: 18),)
                        )
                        ).toList(),
                        onChanged: (item)=>setState(() =>selectedItem = item,
                        ),
                        ),
                        ),
                      
                          SizedBox(height: 20,),
                          Text('¿Tienes problemas al comer? (Poco apetito o comer en exceso)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                                SizedBox(height: 20,),
                            SizedBox(
                                      height: 57,
                                      width: 340,
                                      child: DropdownButtonFormField<String>(
                      value: selectedItem,
                      iconSize: 40,
                      iconEnabledColor: Colors.black,
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                      elevation: 40,
                      isExpanded: false,
                      decoration:InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                       
                        
                      ),
                      items: items.map((item) => DropdownMenuItem<String>(
                                
                        value: item,child: Text(item,style: TextStyle(fontSize: 18),)
                        )
                        ).toList(),
                        onChanged: (item)=>setState(() =>selectedItem = item,
                        ),
                        ),
                        ),
                    
                        SizedBox(height: 20,),
                          Text('¿Sientes que decepcionas a familia, amigos o a ti mismo/a?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                                SizedBox(height: 20,),
                            SizedBox(
                                      height: 57,
                                      width: 340,
                                      child: DropdownButtonFormField<String>(
                      value: selectedItem,
                      iconSize: 40,
                      iconEnabledColor: Colors.black,
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                      elevation: 40,
                      isExpanded: false,
                      decoration:InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                       
                        
                      ),
                      items: items.map((item) => DropdownMenuItem<String>(
                                
                        value: item,child: Text(item,style: TextStyle(fontSize: 18),)
                        )
                        ).toList(),
                        onChanged: (item)=>setState(() =>selectedItem = item,
                        ),
                        ),
                        ),

                        SizedBox(height: 20,),
                          Text('¿Tienes dificultad para concentrarte durante tus clases o al hacer tus tareas?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                                SizedBox(height: 20,),
                            SizedBox(
                                      height: 57,
                                      width: 340,
                                      child: DropdownButtonFormField<String>(
                      value: selectedItem,
                      iconSize: 40,
                      iconEnabledColor: Colors.black,
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                      elevation: 40,
                      isExpanded: false,
                      decoration:InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                       
                        
                      ),
                      items: items.map((item) => DropdownMenuItem<String>(
                                
                        value: item,child: Text(item,style: TextStyle(fontSize: 18),)
                        )
                        ).toList(),
                        onChanged: (item)=>setState(() =>selectedItem = item,
                        ),
                        ),
                        ),

                        SizedBox(height: 20,),
                          Text('¿Tus amigos o familiares te han dicho que te ves decaído/a o triste?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                                SizedBox(height: 20,),
                            SizedBox(
                                      height: 57,
                                      width: 340,
                                      child: DropdownButtonFormField<String>(
                      value: selectedItem,
                      iconSize: 40,
                      iconEnabledColor: Colors.black,
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                      elevation: 40,
                      isExpanded: false,
                      decoration:InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                       
                        
                      ),
                      items: items.map((item) => DropdownMenuItem<String>(
                                
                        value: item,child: Text(item,style: TextStyle(fontSize: 18),)
                        )
                        ).toList(),
                        onChanged: (item)=>setState(() =>selectedItem = item,
                        ),
                        ),
                        ),

                        SizedBox(height: 20,),
                          Text('¿Se te ha hecho muy dificíl el cumplir con todas tus tareas?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                                SizedBox(height: 20,),
                            SizedBox(
                                      height: 57,
                                      width: 340,
                                      child: DropdownButtonFormField<String>(
                      value: selectedItem,
                      iconSize: 40,
                      iconEnabledColor: Colors.black,
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                      elevation: 40,
                      isExpanded: false,
                      decoration:InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                       
                        
                      ),
                      items: items.map((item) => DropdownMenuItem<String>(
                                
                        value: item,child: Text(item,style: TextStyle(fontSize: 18),)
                        )
                        ).toList(),
                        onChanged: (item)=>setState(() =>selectedItem = item,
                        ),
                        ),
                        ),

                        SizedBox(height: 20,),
                          Text('¿Has tenido pensamientos de salirte de tu carrera?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                                SizedBox(height: 20,),
                            SizedBox(
                                      height: 57,
                                      width: 340,
                                      child: DropdownButtonFormField<String>(
                      value: selectedItem,
                      iconSize: 40,
                      iconEnabledColor: Colors.black,
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                      elevation: 40,
                      isExpanded: false,
                      decoration:InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                       
                        
                      ),
                      items: items.map((item) => DropdownMenuItem<String>(
                                
                        value: item,child: Text(item,style: TextStyle(fontSize: 18),)
                        )
                        ).toList(),
                        onChanged: (item)=>setState(() =>selectedItem = item,
                        ),
                        ),
                        ),

                          SizedBox(height: 30,),

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
                    Navigator.pushNamed(context, 'Habitos');
                  }, 
                  child: Text('Enviar',style: TextStyle(color: Colors.indigo,fontSize: 25,fontWeight: FontWeight.bold),)
                  ),

                SizedBox(height: 50,),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),

      ));
  }
}