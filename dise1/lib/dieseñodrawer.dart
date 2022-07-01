import 'package:flutter/material.dart';

class disenodrawer extends StatelessWidget {
  const disenodrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color.fromRGBO(44, 96, 176, 1),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/monita.jpg'), fit: BoxFit.cover),
            ),
          ),
          const Text(
            'Angel Luis Rico Longoria',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const Text(
            '19150',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
