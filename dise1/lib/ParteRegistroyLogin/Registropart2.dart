import 'dart:ffi';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;

enum SingingCharacter { lafayette, jefferson }

class Registropart2 extends StatefulWidget {

  final String nombres;
  final String apellidoP;
  final String apellidoM;
  final String matricula;
  final String correo;
  final String semestreS;
  final int idCarrera;
  final String calle; 
  final String numCasaS;
  final String ciudad; 
  final String colonia; 
  final String telefonoS; 
  final String telefonoContactoS; 

  const Registropart2(this.nombres, this.apellidoP, this.apellidoM, this.matricula, this.correo, this.semestreS,
    this.idCarrera, this.calle, this.numCasaS, this.ciudad, this.colonia, this.telefonoS, this.telefonoContactoS,
    {Key? key}) : super(key: key);

  @override
  State<Registropart2> createState() => _Registropart2State();
}

class _Registropart2State extends State<Registropart2> {

  List<String> semestres =[
      'Sí','No',
    ];

  List<String> validNum = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];

  List<String> validMin = ['a','b','c','d','e','f','g','h','i','j',"k",'l','m','n','ñ','o','p','q','r','s',
    't','u','v','w','x','y','z'];

  List<String> validMay = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','Ñ','O','P','Q','R',
    'S','T','U','V','W','X','Y','Z'];

  List<String> validOtros = ["@","#",r"$","_","&","-","+","(",")","/","*",'"',":","'",";","!","¡","?",
    "¿",",",".","~","`","|","•","√","π","÷","¶","∆","£","¢","€","¥","^","°","=","{","}",r"\","%","©","®","™",
    "✓","[","]","<",">","¨"];

    String? selectedItem = 'Sí';
    String? selectedItem2 = 'Sí';
    String? selectedItem3 = 'Sí';
    String? selectedItem4 = 'Sí';
    String? selectedItem5 = 'Sí';
    String? selectedItem6 = 'Sí';

    bool ocultar = true;

    String? diabetes = "";
    String? hipertension = "";
    String? asma = "";
    String? discapacidad = "";
    String? ansiedad = "";
    String? depresion = "";

    TextEditingController otroProblema = TextEditingController();
    TextEditingController _passwordcontroller = TextEditingController();
    TextEditingController password2 = TextEditingController();

    var _formState,key = GlobalKey<FormState>(); 

    var idP;

  String getDiabetes() {
    setState(() {
      diabetes = selectedItem;
    });
    return diabetes.toString();
  }

  String getHipertension() {
    setState(() {
      hipertension = selectedItem2;
    });
    return hipertension.toString();
  }

  String getAsma() {
    setState(() {
      asma = selectedItem3;
    });
    return asma.toString();
  }

  String getDiscapacidad() {
    setState(() {
      discapacidad = selectedItem4;
    });
    return discapacidad.toString();
  }

  String getAnsiedad() {
    setState(() {
      ansiedad = selectedItem5;
    });
    return ansiedad.toString();
  }

  String getDepresion() {
    setState(() {
      depresion = selectedItem6;
    });
    return depresion.toString();
  }

  bool validarPswrd(String textoo) {
    bool valid = true;
    bool num=false;
    bool min=false;
    bool may=false;
    bool flag=false;

    if(textoo.length<8){
      Toast.show("La contraseña debe tener por lo menos 8 caracteres!");
      valid = false;
    }else{
      for(int i=0; i<textoo.length; i++){
        if(validNum.contains(textoo[i])){
          num=true;
        }
        if(validMin.contains(textoo[i])){
          min=true;
        }
        if(validMay.contains(textoo[i])){
          may=true;
        }
        if(validOtros.contains(textoo[i])){
          flag=true;
        }
      }

      if(flag==true && num==true && min==true && may==true){
        valid=true;
      }else{
        Toast.show("La contraseña debe contener al menos 1 letra mayuscula, 1 minuscula, 1 numero y 1 caracter especial",
         duration: Toast.lengthLong);
        valid=false;
      }
    
    }  

    return valid;
  }
  
  void registroAlumno() async {

    String nombres2=widget.nombres;
    String apellidoP2=widget.apellidoP;
    String apellidoM2=widget.apellidoM;
    String matricula2=widget.matricula;
    String correo2=widget.correo;
    String semestreS2=widget.semestreS;
    String idCarrera2=widget.idCarrera.toString();
    String calle2=widget.calle; 
    String numCasaS2=widget.numCasaS;
    String ciudad2=widget.ciudad; 
    String colonia2=widget.colonia; 
    String telefonoS2=widget.telefonoS;
    String telefonoContactoS2=widget.telefonoContactoS;

    var url = "https://habitsapp.000webhostapp.com/registro.php";

    var response = await http.post(Uri.parse(url), body: {
      "matriculaID": widget.matricula,
      "correo": correo2,
      "pswrd": password2.text,
      "nombres": nombres2,
      "apellidoP": apellidoP2,
      "apellidoM": apellidoM2,
      "semestre": semestreS2,
      "id_carrera": idCarrera2,
      "calle": calle2,
      "num_Ext": numCasaS2,
      "colonia": colonia2,
      "ciudad": ciudad2,
      "telefono": telefonoS2,
      "telefono_Alt": telefonoContactoS2,
      "riesgo": "0"

    }); //Registra los datos del alumno en la BD mediante un archivo php.

    if (response.body == "Registro") {
      Toast.show("REGISTRO COMPLETADO!",
          duration: Toast.lengthLong,
          gravity: Toast.bottom); //Mensaje de registro correcto
      Navigator.pushNamed(context, 'Principal');
      enfermedades();
      if(otroProblema.text!=""){
        checarEnfermedad();
        print("Otro vacio");
      }
    } else if (response.body == "ERROR") {
      Toast.show("Ha ocurrido un error :(",
          duration: Toast.lengthLong, gravity: Toast.bottom);
    } else if (response.body == "Fallo, revise su conexión") {
      Toast.show("FALLO DE RED",
          duration: Toast.lengthLong, gravity: Toast.bottom);
    } else {
      Toast.show("Fallo de conexión", duration: Toast.lengthLong, gravity: Toast.bottom);
    }
  }


  void registroEnfermedades(var idEnf, var matriculaAlumno) async{
    var url = "https://habitsapp.000webhostapp.com/registroEnf.php";

    var response = await http.post(Uri.parse(url), body: {
      "id_Padecimiento": idEnf,
      "matricula_ID": matriculaAlumno
    }); //Registra los padecimientos que los alumnos marquen como que si los padecen

    if (response.body == "Satisfactorio") {
      print(response.body); //Mensaje de registro correcto
    } else if (response.body == "ERROR") {
      Toast.show("Ha ocurrido un error al registrar los padecimientos :(",
          duration: Toast.lengthLong, gravity: Toast.bottom);
    } else if (response.body == "Fallo, revise su conexión") {
      Toast.show("FALLO DE RED",
          duration: Toast.lengthLong, gravity: Toast.bottom);
    } else {
      Toast.show("Fallo de conexión", duration: Toast.lengthLong, gravity: Toast.bottom);
    }

  }


  void enfermedades() {
    if(getDiabetes()=="Sí"){
      registroEnfermedades("1", widget.matricula);
    }

    if(getHipertension()=="Sí"){
      registroEnfermedades("2", widget.matricula);
    }

    if(getAsma()=="Sí"){
      registroEnfermedades("3", widget.matricula);
    }

    if(getDiscapacidad()=="Sí"){
      registroEnfermedades("4", widget.matricula);
    }

    if(getAnsiedad()=="Sí"){
      registroEnfermedades("5", widget.matricula);
    }

    if(getDepresion()=="Sí"){
      registroEnfermedades("6", widget.matricula);
    }
  }

  void checarEnfermedad() async{
    var url = "https://habitsapp.000webhostapp.com/verificarEnf.php";

    final response = await http.post(Uri.parse(url), body: {
      "padecimiento": otroProblema.text.toLowerCase()
    }); //Verifica si existe el padecimiento en la BD

    var resultadoId= json.decode(response.body);

    if (resultadoId.length == 0) {
      print("No esta registrado el padecimiento");
      registroNuevasEnfermedades(otroProblema.text.toLowerCase());
    } else {
      idP = resultadoId[0]['idPadecimiento'];
      print("todo en orden");
      print(idP);
      registroEnfermedades(idP, widget.matricula);
    }

  }

  void registroNuevasEnfermedades(String pad) async{
    var url = "https://habitsapp.000webhostapp.com/registroNewEnf.php";

    var response = await http.post(Uri.parse(url), body: {
      "padecimiento": pad
    }); //Registra los padecimientos nuevos que los alumnos marquen como que si los padecen

    if (response.body == "Exito :)") {
      print(response.body); //Mensaje de registro correcto
      checarEnfermedad();
    } else if (response.body == "ERROR :(") {
      print("Error en la consulta");
    } else if (response.body == "Fallo, revise su conexión") {
      Toast.show("FALLO DE RED",
          duration: Toast.lengthLong, gravity: Toast.bottom);
    } else {
      Toast.show("Fallo de conexión", duration: Toast.lengthLong, gravity: Toast.bottom);
    }

  }

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset('assets/logohabits12.png'),
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),

            const SizedBox(
              width: 500,
              child: Text(
                'Registro',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),

            Container(
                     padding: const EdgeInsets.only(right: 265),
                     child: const SizedBox(
                          child: Text('Diabetes',style:TextStyle(fontSize: 15,),),
                      ),
                   ),
                  Container(
                    width: 328,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                      ),
                      value: selectedItem,
                      items: semestres.map((semestres) => DropdownMenuItem<String>(
                        value: semestres,
                        child: Text(semestres,style: TextStyle(fontSize: 15)),
                      ))
                      .toList(),
                      onChanged: (semestres)=> setState(() =>selectedItem=semestres),
                    ),
                  ),

            const SizedBox(
              height: 20,
            ),
            Container(
                     padding: const EdgeInsets.only(right: 255),
                     child: const SizedBox(
                          child: Text('Hipertensión',style:TextStyle(fontSize: 15,),),
                      ),
                   ),
                  Container(
                    width: 328,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                      ),
                      value: selectedItem2,
                      items: semestres.map((semestres) => DropdownMenuItem<String>(
                        value: semestres,
                        child: Text(semestres,style: TextStyle(fontSize: 15)),
                      ))
                      .toList(),
                      onChanged: (semestres)=> setState(() =>selectedItem2=semestres),
                    ),
                  ),
                  const SizedBox(
              height: 20,
            ),
            Container(
                     padding: const EdgeInsets.only(right: 140),
                     child: const SizedBox(
                          child: Text('Asma/Problema Respiratorio',style:TextStyle(fontSize: 15,),),
                      ),
                   ),
                  Container(
                    width: 328,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                      ),
                      value: selectedItem3,
                      items: semestres.map((semestres) => DropdownMenuItem<String>(
                        value: semestres,
                        child: Text(semestres,style: TextStyle(fontSize: 15)),
                      ))
                      .toList(),
                      onChanged: (semestres)=> setState(() =>selectedItem3=semestres),
                    ),
                  ),
                const SizedBox(
              height: 20,
            ),
            Container(
                     padding: const EdgeInsets.only(right: 245),
                     child: const SizedBox(
                          child: Text('Discapacidad',style:TextStyle(fontSize: 15,),),
                      ),
                   ),
                   Container(
                    width: 328,
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                      ),
                      value: selectedItem4,
                      items: semestres.map((semestres) => DropdownMenuItem<String>(
                        value: semestres,
                        child: Text(semestres,style: TextStyle(fontSize: 15)),
                      ))
                      .toList(),
                      onChanged: (semestres)=> setState(() =>selectedItem4=semestres),
                    ),
                  ),
              const SizedBox(
              height: 20,
            ),
            Container(
                     padding: const EdgeInsets.only(right: 265),
                     child: const SizedBox(
                          child: Text('Ansiedad',style:TextStyle(fontSize: 15,),),
                      ),
                   ),
                  Container(
                    width: 328,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                      ),
                      value: selectedItem5,
                      items: semestres.map((semestres) => DropdownMenuItem<String>(
                        value: semestres,
                        child: Text(semestres,style: TextStyle(fontSize: 15)),
                      ))
                      .toList(),
                      onChanged: (semestres)=> setState(() =>selectedItem5=semestres),
                    ),
                  ),
    const SizedBox(
              height: 20,
            ),
            Container(
                     padding: const EdgeInsets.only(right: 265),
                     child: const SizedBox(
                          child: Text('Depresión',style:TextStyle(fontSize: 15,),),
                      ),
                   ),
                  Container(
                    width: 328,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                      ),
                      value: selectedItem6,
                      items: semestres.map((semestres) => DropdownMenuItem<String>(
                        value: semestres,
                        child: Text(semestres,style: TextStyle(fontSize: 15)),
                      ))
                      .toList(),
                      onChanged: (semestres)=> setState(() =>selectedItem6=semestres),
                    ),
                  ),
            const SizedBox(
              height: 10,
            ),

            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: otroProblema,
                  decoration: const InputDecoration(
                    labelText: 'Algún otro problema de salud ',
                    hintText: 'Ingresa tu Problema (Físico o mental)',
                  ),
                  maxLength: 100,
                )),
           const SizedBox(
              height: 10,
            ),

            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: _passwordcontroller,
                  decoration:  InputDecoration(
                    labelText: 'Contraseña',
                    hintText: 'Ingresa tu Contraseña',
                    errorText: 'Error',
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          ocultar =!ocultar;
                        });
                      }, 
                      icon: Icon(ocultar ?Icons.remove_red_eye: Icons.panorama_fish_eye_outlined)),
                  ),
                  
                  maxLength: 20,
                  obscureText: ocultar,
                )),
            SizedBox(
              height: 10,
            ),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: password2,
                  decoration: InputDecoration(
                    labelText: 'Repite tu Contraseña',
                    hintText: 'Valida tu Contraseña',
                  ),
                  maxLength: 20,
                  obscureText: true,
                  
                )),

            SizedBox(
              height: 10,
            ),

            FloatingActionButton(
                     elevation: 40,
                    child: Icon(Icons.keyboard_arrow_right_outlined),
                    onPressed: (){
                      if(_passwordcontroller.text == "" || password2.text == ""){
                        Toast.show("Ambos campos de contraseña deben estar contestados!",
                          duration: Toast.lengthLong, gravity: Toast.bottom);
                      }else if(_passwordcontroller.text!=password2.text){
                        Toast.show("No coincide la contraseña!",
                        duration: Toast.lengthLong, gravity: Toast.bottom);
                      }else if(!validarPswrd(_passwordcontroller.text)){
                        print("Error con la contraseña");
                      }else{
                        registroAlumno(); 
                      }
                      
                    }
                    )
          ],
        ),
      ),
    );
  }
}