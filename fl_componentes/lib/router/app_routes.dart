import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute='home';
  static final menuOptions = <MenuOption>[
    // MenuOption( route: 'home',name: 'Home screen',screen: const HomeScreen(),icon: Icons.home),
    MenuOption( route: 'lisview1',name: 'tipo lisview1',screen: Listview1Screen(),icon: Icons.list),
    MenuOption( route: 'lisview2',name: 'tipo lisview2',screen: Listview2Screen(),icon: Icons.list_alt_outlined),
    MenuOption( route: 'alert',name: 'alert screen',screen: const AlertScreen(),icon: Icons.add_alert_outlined),
    MenuOption( route: 'card',name: 'card screen',screen: const CardScreen(),icon: Icons.card_membership),
    MenuOption( route: 'Avatar',name: 'Circle Avatar',screen: const AvatarScreen(),icon: Icons.supervised_user_circle_outlined),
    MenuOption( route: 'Animated',name: 'Animeted Container',screen: const AnimatedScreen(),icon: Icons.play_circle_outline_rounded),
    MenuOption( route: 'inputs',name: 'text inputs',screen:  InputsScreen(),icon: Icons.input_rounded),
    MenuOption( route: 'Slider',name: 'Slider and Checks',screen: const  SliderScreen(),icon: Icons.slow_motion_video_rounded),
    MenuOption( route: 'Lisview Builder',name: 'InfiniteScroll',screen:  LisviewBuilderScreen(),icon: Icons.build_circle_rounded),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes (){
    Map<String, Widget Function(BuildContext)> appRoutes ={};
    appRoutes.addAll({'home': ((BuildContext context) => const HomeScreen() )});

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen,});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes ={
  //       'alert'   : (BuildContext context) => const AlertScreen(),
  //       'card'    : (BuildContext context) => const Card(),
  //       'home'    : (BuildContext context) => const HomeScreen(),
  //       'lisview1': (BuildContext context) => Listview1Screen(),
  //       'lisview2': (BuildContext context) => Listview2Screen(),
  //     };

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
          return  MaterialPageRoute(
            builder: (context) => const AlertScreen(),);
  }

}