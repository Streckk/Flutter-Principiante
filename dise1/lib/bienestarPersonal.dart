import 'package:flutter/material.dart';

class Bienestar extends StatefulWidget {
  const Bienestar({Key? key}) : super(key: key);

  @override
  State<Bienestar> createState() => _BienestarState();
}

class _BienestarState extends State<Bienestar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/bienestarP.png'),
          fit: BoxFit.cover)
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
            children: [
              const SizedBox(height: 80,),
                const Align(
                  alignment: Alignment(0,1),
                  child: Text('Habitos',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)
                  
                  ),
                  const SizedBox(height: 10,),
              Align(
                alignment: const Alignment(0,-0.6),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'cambiofisico');
                    });
                  },
                  child: Container(
                    width: 320,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.50),
                        offset: const Offset(1, 15),
                        blurRadius: 10,
                      )]
                    ),
                    child: Row(
                      children:  <Widget>[
                        Container(
                            width: 100,
                            height: 90,
                           decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/logoCambiofisico.jpeg'),
                            fit: BoxFit.cover),
                          ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 220,
                                height: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Align(
                                      alignment: Alignment(-0.5,0),
                                      child: Text('Cambio físico',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                                    
                                    Align(
                                      alignment: Alignment(-0.5,0),
                                      child: Text('Más información',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold,))),
                               
                                                            
                                  ],
                                ),
                              ),
                              
                            ],
                          )
                      ],
                    ),
                  ),
                ),
              ),
                  const SizedBox(height: 25,),
              Align(
                alignment: const Alignment(0,-0.3),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'alimentacion');
                    });
                  },
                  child: Container(
                    width: 320,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.50),
                        offset: const Offset(1, 15),
                        blurRadius: 10,
                      )]
                    ),
                    child: Row(
                      children:  <Widget>[
                        Container(
                            width: 100,
                            height: 90,
                           decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/logoAlimentacion.jpeg'),
                            fit: BoxFit.cover),
                          ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 220,
                                height: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Align(
                                      alignment: Alignment(-0.5,0),
                                      child: Text('Alimentación',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                                    
                                    Align(
                                      alignment: Alignment(-0.5,0),
                                      child: Text('Más información',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold,))),
                               
                                                            
                                  ],
                                ),
                              ),
                              
                            ],
                          )
                      ],
                    ),
                  ),
                ),
              ),
                const SizedBox(height: 25,),
              Align(
                alignment: const Alignment(0,0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'salud_Mental');
                    });
                  },
                  child: Container(
                    width: 320,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.50),
                        offset: const Offset(1, 15),
                        blurRadius: 10,
                      )]
                    ),
                    child: Row(
                      children:  <Widget>[
                        Container(
                            width: 100,
                            height: 90,
                           decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/logoSaludmental.jpeg'),
                            fit: BoxFit.cover),
                          ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 220,
                                height: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Align(
                                      alignment: Alignment(-0.5,0),
                                      child: Text('Salud Mental',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                                    
                                    Align(
                                      alignment: Alignment(-0.5,0),
                                      child: Text('Más información',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold,))),
                               
                                                            
                                  ],
                                ),
                              ),
                              
                            ],
                          )
                      ],
                    ),
                  ),
                ),
              ),
                const SizedBox(height: 25,),
              Align(
                alignment: const Alignment(0,0.3),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'home');
                    });
                  },
                  child: Container(
                    width: 320,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.50),
                        offset: const Offset(1, 15),
                        blurRadius: 10,
                      )]
                    ),
                    child: Row(
                      children:  <Widget>[
                        Container(
                            width: 100,
                            height: 90,
                           decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/logoHogar.jpeg'),
                            fit: BoxFit.cover),
                          ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 220,
                                height: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Align(
                                      alignment: Alignment(-0.6,0),
                                      child: Text('Hogar',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                                    
                                    Align(
                                      alignment: Alignment(-0.5,0),
                                      child: Text('Más información',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold,))),
                               
                                                            
                                  ],
                                ),
                              ),
                              
                            ],
                          )
                      ],
                    ),
                  ),
                ),
              ),
                const SizedBox(height: 25,),
              Align(
                alignment: const Alignment(0,0.6),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'lifestyle');
                    });
                  },
                  child: Container(
                    width: 320,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.50),
                        offset: const Offset(1, 15),
                        blurRadius: 10,
                      )]
                    ),
                    child: Row(
                      children:  <Widget>[
                        Container(
                            width: 100,
                            height: 90,
                           decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/logoEstilovida.jpeg'),
                            fit: BoxFit.cover),
                          ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 220,
                                height: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Align(
                                      alignment: Alignment(-0.5,0),
                                      child: Text('Estilo de vida',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                                    
                                    Align(
                                      alignment: Alignment(-0.5,0),
                                      child: Text('Más información',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold,))),
                               
                                                            
                                  ],
                                ),
                              ),
                              
                            ],
                          )
                      ],
                    ),
                  ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
