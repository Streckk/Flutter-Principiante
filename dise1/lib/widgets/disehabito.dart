import 'package:dise1/models/objetos_hab.dart';
import 'package:flutter/material.dart';

class Disehabito extends StatefulWidget {
  ObjetosHab diseh;
  Disehabito({Key? key, required this.diseh}) : super(key: key);

  @override
  State<Disehabito> createState() => _DisehabitoState();
}

class _DisehabitoState extends State<Disehabito> {
  get productoid => null;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children:[
        const SizedBox(height: 25,),
        Row(
        children:[
         const SizedBox(width: 20,),
          Container(
            width: 350,
          height: 75,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15),
              ),
          child: Row(
            children: [
              SizedBox(
                width: 280,
                child:Column(
                  children: [
                   const SizedBox(height: 10,),
                    Align(
                      alignment:const Alignment(-0.7, -0.8),
                      child: Text(
                      widget.diseh.para1,style: 
                     const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromRGBO(44, 96, 176, 1),),
                      ),
                    ),
                   const SizedBox(height: 5,),
                    Align(
                      alignment:const Alignment(-0.8, -0.8),
                      child: Text(
                      widget.diseh.para3,style: 
                     const TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromRGBO(44, 96, 176, 1),),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                 displayDialogAndroid(context);
                },
                child: Container(
                  width: 60,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(36, 16, 86, 1),
                    shape: BoxShape.circle
                  ),
                  child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
        ] 
      ),
      ] 
    );
  }
    void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: ( context ) {

        return Container(
            margin: const EdgeInsets.only(top: 190,bottom:0),
            width: 1000,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20), 
            ),
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Text(widget.diseh.para1,style: TextStyle(color: Color.fromRGBO(44, 96, 176, 1),fontSize: 20,fontWeight: FontWeight.bold),),
               const SizedBox(height: 30,),
                Text(widget.diseh.para2,style: TextStyle(fontSize: 15,color: Colors.grey)),
               const SizedBox(height: 30,),
                Text(widget.diseh.para3,style: TextStyle(color: Color.fromRGBO(44, 96, 176, 1),fontSize: 20,fontWeight: FontWeight.bold),),
               const SizedBox(height: 30,),
                Text(widget.diseh.para4),
              const  SizedBox(height: 30,),
                Text(widget.diseh.para5),
              const  SizedBox(height: 30,),
                Text(widget.diseh.para6,style: TextStyle(color: Color.fromRGBO(44, 96, 176, 1),fontSize: 20,fontWeight: FontWeight.bold),),
              const  SizedBox(height: 30,),
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
                      onPressed: (){
                         
                      }, 
                      child: const Text('Eliminar habito',style: TextStyle(color: Color.fromRGBO(44, 96, 176, 1),fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
              ],
            ),
          );
       
      }
    );
  }
}
