import 'package:flutter/material.dart';

class ContenedorList extends StatelessWidget {
  const ContenedorList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(),
                const Text('julio',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Colors.white,
                        fontStyle: FontStyle.normal)),
                const SizedBox(
                  height: 5,
                ),
                const Text('domingo',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Colors.white,
                        fontStyle: FontStyle.normal)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  color: const Color.fromRGBO(21, 6, 56, 100),
                  shape: const CircleBorder(),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            SizedBox(
              height: 100,
            ),
            Text('No hay habitos para este día 😀',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontStyle: FontStyle.normal)),
            SizedBox(
              height: 5,
            ),
            Text('No te olvides de agregar unos cuántos',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontStyle: FontStyle.normal)),
          ],
        ),
      ],
    );
  }
}
