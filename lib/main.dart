// import de dart

//import flutter
import 'package:flutter/material.dart';

//import owner
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const AlertScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),

      /**
       * * En caso de que la ruta no exista esta funcion sera ejecutada creando una nueva ruta
       * * onGenerateRoute manda los settings como es el unico parametro que recibe la funcion onGenerateRoute
       * * de la clase AppRoutes entonces podemos llamarla por referencia sin ejecutarla
       *
       * * Tambien se puede
       * (settings) => AppRoutes.onGenerateRoute(settings)
       */
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme
    );
  }
}
