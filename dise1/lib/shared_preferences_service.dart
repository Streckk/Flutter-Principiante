import 'package:shared_preferences/shared_preferences.dart';

class PrefService{
  Future createCache(String correo)async{
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString('correo', correo);
  }
  
  Future readCache(String correo)async{
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    var cache = _preferences.getString('correo');
    return cache; 
  }
  
  Future removeCache(String correo)async{
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.remove('correo');
  }
}
