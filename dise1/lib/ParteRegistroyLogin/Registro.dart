import 'dart:convert';
import 'package:dise1/ParteRegistroyLogin/Registropart2.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;

class Registro extends StatefulWidget {
  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  TextEditingController nombres = TextEditingController();
  TextEditingController apellidoP = TextEditingController();
  TextEditingController apellidoM = TextEditingController();
  TextEditingController matricula = TextEditingController();
  TextEditingController correo = TextEditingController();
  String? semestre = ""; // semestre
  String? carrera = ""; // carrera
  var idCarrera = 0;
  TextEditingController calle = TextEditingController();
  TextEditingController numCasa = TextEditingController();
  TextEditingController ciudad = TextEditingController();
  TextEditingController colonia = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController telefonoContacto = TextEditingController();

  List<String> semestres = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13'
  ];
  String? selectedItem = '1';

  List<String> carreras = ['ISC', 'IGE', 'IIND', 'IIAS', 'IQ'];
  String? selectedItem2 = 'ISC';

  List<String> validText = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "@","#",r"$","_","&","-","+",
    "(",")","/","*",'"',":","'",";","!","¡","?","¿",",",".","~","`","|","•","√","π","÷","¶","∆","£","¢","€",
    "¥","^","°","=","{","}",r"\","%","©","®","™","✓","[","]","<",">","¨"];

  List<String> validTextConNum = ["@","#",r"$","_","&","-","+","(",")","/","*",'"',":","'",";","!","¡","?",
    "¿",",",".","~","`","|","•","√","π","÷","¶","∆","£","¢","€","¥","^","°","=","{","}",r"\","%","©","®","™",
    "✓","[","]","<",">","¨"];

  List<String> validNum = ['a','b','c','d','e','f','g','h','i','j',"k",'l','m','n','ñ','o','p','q','r','s',
    't','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','Ñ','O','P','Q','R',
    'S','T','U','V','W','X','Y','Z',"@","#",r"$","_","&","-","+","(",")","/","*",'"',":","'",";","!","¡","?",
    "¿",",",".","~","`","|","•","√","π","÷","¶","∆","£","¢","€","¥","^","°","=","{","}",r"\","%","©","®","™",
    "✓","[","]","<",">","¨"];

  bool validarTextos(String textoo) {
    bool valid1 = true;
    for(int i=0; i<textoo.length; i++){
      if(validText.contains(textoo[i])){
        valid1 = false;
      }
    }
    return valid1;
  }

  bool validarTextosConNum(String textoo) {
    bool valid = true;
    for(int i=0; i<textoo.length; i++){
      if(validTextConNum.contains(textoo[i])){
        valid = false;
      }
    }
    return valid;
  }

  bool validarNum(String textoo) {
    bool valid = true;
    for(int i=0; i<textoo.length; i++){
      if(validNum.contains(textoo[i])){
        valid = false;
      }
    }
    return valid;
  }

  bool validarMatricula(String textoo) {
    bool valid = true;
    if(textoo.length<9){
      Toast.show("Ingrese su matricula completa!");
      valid = false;
    }else{
      for(int i=0; i<textoo.length; i++){
        if(i==4){
          if(textoo[i]!="F"){
            Toast.show("Recuerda la F en medio de tu matricula");
            valid = false;
          }
        }else{
          if(validNum.contains(textoo[i])){
            Toast.show("Solo puede haber numeros en la matricula a los costados de la F");
            valid = false;
          }
        } 
      }
    }
    
    return valid;
  }

  bool validarCorreo(String texto){
    bool valid=true;

    if(!texto.contains("@itsmante.edu.mx")){
      valid=false;
    }

    return valid;
  }

  bool validacionFormulario() {
    bool flag=true;

    if(!validarTextos(nombres.text)){
      Toast.show("Los nombres solo pueden tener letras!");
      flag=false;
    }

    if(!validarTextos(apellidoP.text) || !validarTextos(apellidoM.text)){
      Toast.show("Los apellidos solo pueden tener letras!");
      flag=false;
    }

    if(!validarTextosConNum(ciudad.text)){
      Toast.show("No puedes ingresar caracteres especiales en ciudad!");
      flag=false;
    }

    if(!validarTextosConNum(calle.text)){
      Toast.show("No puedes ingresar caracteres especiales en calle!");
      flag=false;
    }

    if(!validarTextosConNum(colonia.text)){
      Toast.show("No puedes ingresar caracteres especiales en colonia!");
      flag=false;
    }

    if(!validarNum(numCasa.text)){
      Toast.show("Solo puedes ingresar numeros en numero de casa!");
      flag=false;
    }

    if(!validarNum(telefono.text) || !validarNum(telefonoContacto.text)){
      Toast.show("Solo puedes ingresar numeros en los apartados de telefonos!");
      flag=false;
    }

    if(telefono.text.length<10){
      Toast.show("Tienes que ingresar 10 digitos como telefono!");
      flag=false;
    }

    if(telefonoContacto.text.length<10){
      Toast.show("Tienes que ingresar 10 digitos como telefono de contacto!");
      flag=false;
    }

    if(!validarMatricula(matricula.text.toUpperCase())){
      flag=false;
    }

    if(!validarCorreo(correo.text)){
      Toast.show("Debes ingresar tu correo institucional!");
      flag=false;
    }

    return flag;
  }

  void checarMatricula() async{
    var url = "https://habitsapp.000webhostapp.com/verificarMatricula.php";

    final response = await http.post(Uri.parse(url), body: {
      "matriculaID": matricula.text.toUpperCase()
    }); //Verifica si existe el padecimiento en la BD

    print(response.body);
    var resultado= json.decode(response.body);

    if (resultado.length == 0) {
      print("No esta registrada la matricula");
      checarCorreo();
    } else if(resultado=="Fallo, revise su conexión"){
      Toast.show("ERROR EN LA RED");
    } else {
      Toast.show("La matricula que ingresaste ya esta registrada!");
    }

  }

  void checarCorreo() async{
    var url = "https://habitsapp.000webhostapp.com/verificarCorreo2.php";

    final response = await http.post(Uri.parse(url), body: {
      "correo": correo.text
    }); //Verifica si existe el padecimiento en la BD

    var resultado= json.decode(response.body);

    if (resultado=="Todo bien") {
      print("No esta registrado el correo");
      getSemestre();
      getCarrera();
      getIdCarrera();
     Navigator.push(
      context,
      MaterialPageRoute(
       builder: (context) => Registropart2(
        nombres.text,
        apellidoP.text,
        apellidoM.text,
        matricula.text.toUpperCase(),
        correo.text,
        semestre!,
        idCarrera,
        calle.text,
        numCasa.text,
        ciudad.text,
        colonia.text,
        telefono.text,
        telefonoContacto.text)));
    } else if(resultado=="Fallo, revise su conexión"){
      Toast.show("ERROR EN LA RED");
    } else {
      Toast.show("El correo que ingresaste ya esta registrado!");
    }

  }

  void getSemestre() {
    setState(() {
      semestre = selectedItem;
    });
  }

  void getCarrera() {
    setState(() {
      carrera = selectedItem2;
    });
  }

  void getIdCarrera(){
    switch (carrera) {
      case "ISC":
        idCarrera=1;
        break;
      
      case "IGE":
        idCarrera=2;
        break;

      case "IIND":
        idCarrera=3;
        break;

      case "IIAS":
        idCarrera=4;
        break;

      case "IQ":
        idCarrera=5;
        break;

      default:
        Toast.show("ERROR: No se especifico carrera");
        break;
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
              child: Text(
                'Registro',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: nombres,
                  decoration: InputDecoration(
                    labelText: 'Nombre(s)',
                    hintText: 'Ingresa tu nombre(s)',
                  ),
                  maxLength: 100,
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: apellidoP,
                  decoration: InputDecoration(
                    labelText: 'Apellido Paterno',
                    hintText: 'Ingresa tu apellido paterno',
                  ),
                  maxLength: 100,
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: apellidoM,
                  decoration: InputDecoration(
                    labelText: 'Apellido Materno',
                    hintText: 'Ingresa tu apellido  materno',
                  ),
                  maxLength: 100,
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: matricula,
                  decoration: InputDecoration(
                    labelText: 'Matricula',
                    hintText: 'Ingresa tu matricula',
                  ),
                  maxLength: 9,
                )),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: correo,
                  decoration: const InputDecoration(
                    labelText: 'Correo institucional',
                    hintText: 'Ingresa tu correo',
                  ),
                  maxLength: 100,
                  keyboardType: TextInputType.emailAddress,
                )),
            SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.only(right: 265),
              child: const SizedBox(
                child: Text(
                  'Semestre',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),

            Container(
              width: 328,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(),
                value: selectedItem,
                items: semestres
                    .map((semestres) => DropdownMenuItem<String>(
                          value: semestres,
                          child:
                              Text(semestres, style: TextStyle(fontSize: 15)),
                        ))
                    .toList(),
                onChanged: (semestres) =>
                    setState(() => selectedItem = semestres),
              ),
            ),
            SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.only(right: 265),
              child: const SizedBox(
                child: Text(
                  'Carrera',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),

            Container(
              width: 328,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(),
                value: selectedItem2,
                items: carreras
                    .map((carreras) => DropdownMenuItem<String>(
                          value: carreras,
                          child: Text(carreras, style: TextStyle(fontSize: 15)),
                        ))
                    .toList(),
                onChanged: (carreras) =>
                    setState(() => selectedItem2 = carreras),
              ),
            ),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: calle,
                  decoration: InputDecoration(
                    labelText: 'Calle',
                    hintText: 'Ingresa tu calle',
                  ),
                  maxLength: 50,
                )),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: numCasa,
                  decoration: InputDecoration(
                    labelText: 'No. de Casa',
                    hintText: 'Ingresa el número de tu casa',
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                )),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: ciudad,
                  decoration: InputDecoration(
                    labelText: 'Localidad/Ciudad',
                    hintText: 'Ingresa tu localidad/ciudad',
                  ),
                  maxLength: 50,
                )),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: colonia,
                  decoration: InputDecoration(
                    labelText: 'Colonia',
                    hintText: 'Ingresa tu colonia',
                  ),
                  maxLength: 100,
                )),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: telefono,
                  decoration: InputDecoration(
                    labelText: 'Teléfono',
                    hintText: 'Ingresa tu teléfono',
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                )),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: telefonoContacto,
                  decoration: const InputDecoration(
                    labelText: 'Teléfono de contacto cercano',
                    hintText: 'Ingresa tu teléfono',
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                )),
            SizedBox(
              height: 30,
            ),

            FloatingActionButton(
                elevation: 40,
                child: Icon(Icons.keyboard_arrow_right_outlined),
                onPressed: () {
                  if (nombres.text == "" ||
                      apellidoP.text == "" ||
                      apellidoM.text == "" ||
                      matricula.text == "" ||
                      correo.text == "" ||
                      calle.text == "" ||
                      numCasa.text == "" ||
                      ciudad.text == "" ||
                      colonia.text == "" ||
                      telefono.text == "" ||
                      telefonoContacto.text == "") {
                    Toast.show("Todos los campos deben estar contestados!",
                        duration: Toast.lengthLong, gravity: Toast.bottom);
                  } else {
                    if(validacionFormulario()){
                      checarMatricula();
                      //
                    }
                    
                  }
                }
              )
          ],
        ),
      ),
    );
  }
}
