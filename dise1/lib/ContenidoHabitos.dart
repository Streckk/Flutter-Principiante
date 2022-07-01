import 'package:dise1/Provider/habitos_provider.dart';
import 'package:dise1/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Contedores.dart';
import 'ContenedorList.dart';
import 'dieseñodrawer.dart';
import 'listadrawer.dart';

class ContenidoH extends StatefulWidget {
  const ContenidoH({Key? key}) : super(key: key);

  @override
  State<ContenidoH> createState() => _ContenidoHState();
}

class _ContenidoHState extends State<ContenidoH> {
  final PrefService prefService = PrefService();
  bool v = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text('drawer'),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.logout,
                color: Color.fromRGBO(44, 96, 176, 1),
                size: 45,
              ),
              onPressed: () async{
                prefService.removeCache('correo').whenComplete(() {
                  Navigator.pushNamed(context, 'Principal');
                });
              },
            );
          })),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: const [
                disenodrawer(),
                listadrawer(),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Crea lo mejor de ti,\nestos son tus habitos',
                style: TextStyle(color: Colors.black, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        v = false;
                      });
                    },
                    child: const Text(
                      'Habitos',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        v = true;
                      });
                    },
                    child: const Text(
                      'TODO list',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    )),
              ],
            ),
            
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 330,
                color: const Color.fromRGBO(44, 96, 176, 1),
                child: v == false ? Contenedor() : const ContenedorList()
                ),
                SizedBox(height: 10,),
            ElevatedButton.icon(
                  icon: const Icon(Icons.add_circle_outline,
                      size: 30, color: Colors.black),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      minimumSize: MaterialStateProperty.all(const Size(300, 70)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      elevation: MaterialStateProperty.all(40),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0)),
                          ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'bienestar');
                  },
                  label: const Text(
                    'Añadir habito',
                    style: TextStyle(
                        color: Color.fromRGBO(44, 96, 176, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),

                SizedBox(height: 20,),
          ],
        ),
      ),



    );
  }
}
