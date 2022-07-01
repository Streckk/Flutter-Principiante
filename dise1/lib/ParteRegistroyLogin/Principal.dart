// ignore_for_file: deprecated_member_use

import 'package:dise1/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;
 
 class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final PrefService _prefService = PrefService(); 
  TextEditingController correo = TextEditingController(); //Controller para el campo de usuario
  TextEditingController pswrd = TextEditingController(); //Controller para el campo de contraseña

  void login() async {
    
    var url = "https://habitsapp.000webhostapp.com/login.php";

    final response = await http.post(Uri.parse(url), body: {
      "correo": correo.text,
      "pswrd": pswrd.text
    }); //Conexión a través de un php a la BD, ambos alojados en un servidor.
    
    if (response.body == "CORRECTO") {
      Toast.show("LOGIN CORRECTO",
          duration: Toast.lengthLong,
          gravity: Toast.bottom); //Mensaje de acceso correcto
      Navigator.popAndPushNamed(context, 'Habitos'); //Manda a la pantalla de inicio
    } else if (response.body == "Fallo, revise su conexión") {
      Toast.show("FALLO DE RED",
          duration: Toast.lengthLong, gravity: Toast.bottom);
    } else if (response.body == "ERROR") {
      Toast.show("LOGIN INCORRECTO",
          duration: Toast.lengthLong, gravity: Toast.bottom);
    } else {
      Toast.show("ERROR", duration: Toast.lengthLong, gravity: Toast.bottom);
    }

  }

  bool ocultar2 =true;
  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children:   [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                     alignment: Alignment.topLeft,
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(98, 162, 254, 1)
                      ),
                    ),
                 ],
               ),
               Row(
                 children: [
                   Container(
                      width: 70,
                      height: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(44, 96, 176, 1)
                      ),
                    ),
                 ],
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
                ],),
                const SizedBox(
                  width: 500,
                  child:  Text('Iniciar sesión',textAlign: TextAlign.center,style:TextStyle(fontSize: 30,),), 
                ),
                  
                  const SizedBox(
                  width: 500,
                  child:  Text('--------------------   0   --------------------',textAlign: TextAlign.center,style:TextStyle(fontSize: 10,),), 
                ),
                  const SizedBox(height: 25,),
                  const SizedBox(
                  width: 340,
                  child:  Text('Correo electrónico',textAlign: TextAlign.left,style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: correo,
                    decoration: const InputDecoration(
                      hintText: 'Ingresa tu correo',
                    ),
                  )
                  ),
                  const SizedBox(height: 25,),
                   const SizedBox(
                  width: 340,
                  child:  Text('Contraseña',textAlign: TextAlign.left,style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                ),
                
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: pswrd,
                    decoration:  InputDecoration(
                      hintText: 'Ingresa tu contraseña',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            ocultar2 =!ocultar2;

                          });
                        },
                      icon: Icon(ocultar2 ?Icons.remove_red_eye: Icons.visibility_off)
                      
                      ),
                    ),
                    obscureText: ocultar2,
                    maxLength: 13,
                  )
                  ),
                  const SizedBox(height: 25,),
                FlatButton(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  onPressed: (){
                    if(correo.text=="" || pswrd.text==""){
                      Toast.show(
                        "Por favor rellena todos los datos", duration: Toast.lengthLong, gravity: Toast.bottom
                        ); 
                    }else{
                      _prefService.createCache(correo.text).whenComplete(() {
                        login();
                      });
                    }
                      
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: const Color.fromRGBO(44, 96, 176, 1), 
                  child: const Text('Iniciar',style: TextStyle(color: Colors.white),)
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       FlatButton(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  onPressed: (){
                    Navigator.pushNamed(context, 'RecuperarCuenta');
                  },
                  child: const Text('¿Olvidaste tu contraseña?',style: TextStyle(color: Colors.black,fontSize: 12),)
                  ),
                    ],
                  ),
                Row(children:  [
                 const SizedBox(
                    width: 110,
                  ),
                   const SizedBox(
                  child:  Text('¿No tienes cuenta?',textAlign: TextAlign.center,style:TextStyle(fontSize: 12,),),
                ),
                FlatButton(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  onPressed: (){
                    Navigator.pushNamed(context, 'Registro');
                  },
                  child: const Text('Registrate',style: TextStyle(color: Colors.black),)
                  ),
                ],
                ),
                Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Container(
                      width: 70,
                      height: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(98, 162, 254, 1)
                      ),
                    ),
                 ],
               ),
          
              ],
            ),
          ),
    );
  }
}