import 'package:flutter/material.dart';
import 'package:leccion1/view/resultado_view.dart';
import 'view/pagina_view.dart';
import 'view/ej2_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calcular Sueldo',
      initialRoute: '/',
      routes: {
        '/': (context) => PaginaView(),
        '/ej2': (context) => const Ej2View(),
        '/resultado': (context) => const ResultadoView(),
      },
      theme: appTheme,
    );
  }
}