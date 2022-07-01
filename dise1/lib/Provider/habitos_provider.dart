import 'dart:ffi';

import 'package:flutter/widgets.dart';

import '../models/objetos_hab.dart';

class HabitosProvider extends ChangeNotifier {
  final arregloh = [];

  agregarhabito(ObjetosHab h) {
    this.arregloh.add(h);
    notifyListeners();
  }

}
