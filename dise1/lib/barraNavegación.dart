import 'package:flutter/material.dart';

class BarraN extends StatefulWidget {
  final Function CurrenttIndex;
  const BarraN({Key? key,required this.CurrenttIndex}) : super(key: key);

  @override
  State<BarraN> createState() => _BarraNState();
}

class _BarraNState extends State<BarraN> {
  int _paginaActual = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _paginaActual = index;
            widget.CurrenttIndex(index);
          });
        },
        currentIndex: _paginaActual,
        backgroundColor: const Color.fromRGBO(44, 96, 176, 1),
        selectedItemColor: Colors.amber,
        unselectedIconTheme:const IconThemeData(color: Colors.white),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant,
                size: 30,
              ),
              label: ''),
              BottomNavigationBarItem(
              icon: Icon(
                Icons.poll,
                size: 30,
              ),
              label: ''),
        ]);
  }
}
