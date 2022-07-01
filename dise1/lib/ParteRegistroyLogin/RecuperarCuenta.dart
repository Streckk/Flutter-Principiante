// ignore_for_file: deprecated_member_use
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
class RecuperarCuenta extends StatefulWidget{
  const RecuperarCuenta({Key? key}) : super(key: key);
  @override
  State<RecuperarCuenta> createState() => _RecuperarCuentaState();
}
class _RecuperarCuentaState extends State<RecuperarCuenta> {

   TextEditingController correoR = TextEditingController();

  bool verifyButton = false;
  String verifyLink="";

void checarCorreo() async{
    var url = "https://habitsapp.000webhostapp.com/verificarCorreo.php";

    final response = await http.post(Uri.parse(url), body: {
      "correo": correoR.text
    }); //Verifica si existe el correo en la BD

    var link= json.decode(response.body);
    print(link);

    if (link == "Usuario invalido") {
      Toast.show("El correo aun no ha sido registrado", duration: Toast.lengthLong);
    } else if(link=="Fallo, revise su conexion"){
      Toast.show("ERROR DE RED", duration: Toast.lengthShort);
    } else {
      print("todo en orden");
      setState(() {
        verifyLink = link;
        verifyButton = true;
      });
    }

  }

  void resetearPassword() async {
    String cad="https://habitsapp.000webhostapp.com/";
    String cad2=cad+verifyLink;

    final response = await http.post(Uri.parse(cad2));

    print(response.body);

    var newPass= json.decode(response.body);

    enviarEmail(newPass.toString());
  }

  enviarEmail(String newPass) async {
    String username = 'habits.app.proyecto@hotmail.com';
    String password = 'Habits.2022';

    final smtpServer =  hotmail(username, password); 

    // Create our message.
    final message = Message()
      ..from = Address(username, 'Habits App')
      ..recipients.add(correoR.text)
      ..subject = 'Recuperación de contraseña :: 😀 :: ${DateTime.now()}'
      ..text = 'Esta es tu nueva contraseña: '+newPass;
      //..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print(e);
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            const SizedBox(height: 80,),
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
                child:  Text('Recuperar',textAlign: TextAlign.center,style:TextStyle(fontSize: 30,),), 
              ),

              const SizedBox(height: 30,),

              const SizedBox(
                width: 340,
                child:  Text('Correo electrónico',textAlign: TextAlign.left,style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: correoR,
                  decoration: const InputDecoration(
                    hintText: 'Ingresa tu correo',
                  ),
                )
                ),
              
              const SizedBox(height: 30,),

                FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 100),
                onPressed: (){
                  checarCorreo();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Color.fromRGBO(44, 96, 176, 1), 
                child: Text('Recuperar contraseña',style: TextStyle(color: Colors.white,fontSize: 15),)
                ),

                verifyButton ? FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 100),
                onPressed: (){
                  resetearPassword();
                  Navigator.pushNamed(context, 'Principal');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Color.fromRGBO(44, 96, 176, 1), 
                child: Text('Enviar al correo',style: TextStyle(color: Colors.white,fontSize: 15),)
                ) : Container()

          ],
        ),

    );
  }
}