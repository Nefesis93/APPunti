import 'package:flutter/material.dart';
import '../main.dart';

/*
classe che gestisce la navigazione tra pagine prendendo in input una route di destinazione\
e dei dati passati dalla pagina precendete
*/
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final data = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyApp());
      default:
        return _errorRoute();
    }
  }

  //pagina a cui si viene mandati se si inviano dati non coerenti con quelli attesi
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
