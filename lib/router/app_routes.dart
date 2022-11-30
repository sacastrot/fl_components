import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
// Exports of all screens
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  // Only screens that are navigated from to home page
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'listView1', name: 'ListView one', screen: const Listview1Screen(), icon: Icons.list),
    MenuOption(route: 'listView2', name: 'ListView two', screen: const Listview2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alets', screen: const AlertScreen(), icon: Icons.add_alert_rounded),
    MenuOption(route: 'card', name: 'Types of Cards', screen: const CardScreen(), icon: Icons.add_card_outlined),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputScreen(), icon: Icons.input_rounded),
  ];

  static  Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({
      'home': (BuildContext context) => const HomeScreen(),
    });
    for (final option in menuOptions){
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  /// Other form
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView1': (BuildContext context) => const Listview1Screen(),
  //   'listView2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
        builder: (context) => const AlertScreen()
    );
  }
}