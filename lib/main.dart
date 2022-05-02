import 'package:flutter/material.dart';
import 'package:martinez/gridviewarticulos.dart';

void main() {
  runApp(MuebleriaApp());
}

class MuebleriaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ej. ListView', //Pestaña en web
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ), // Tema general global
        home: const PaginaInicial());
  }
} //Widget sin estado
