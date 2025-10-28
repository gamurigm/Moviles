import 'package:flutter/material.dart';
import '../controller/ej2_controller.dart';
import '../widgets/boton_calcular.dart';


class PaginaView extends StatefulWidget {
  const PaginaView({super.key});

  @override
  State<PaginaView> createState() => _PaginaViewState();
}

class _PaginaViewState extends State<PaginaView> {
  //para capturar los datos de las cajas de texto
  final venta1Controller = TextEditingController();


  // método para capturar todo el resultado
  void _calcular() {
    // Parsear el texto en múltiples números separados por comas, espacios o saltos de línea.
    final raw = venta1Controller.text;
    final parts = raw.split(RegExp(r'[\s,;]+')).where((s) => s.trim().isNotEmpty).toList();

    final resultado = Ej2Controller.procesarEntradas(parts);

    // Si el controlador devuelve un mensaje (String), mostrar SnackBar y no navegar.
    if (resultado is String) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(resultado)));
      return;
    }

    // Si devuelve el modelo, navegar pasando su representación en texto.
    Navigator.pushNamed(context, '/resultado', arguments: resultado.toString());
  }
  //layout
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo de Sueldo de Vendedor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Ingrese 100 números naturales separados por comas, espacios o saltos de línea:',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: venta1Controller,
              decoration: const InputDecoration(
                hintText: 'Ej: 12, 34, 56, 78, ...',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 6,
            ),
            const SizedBox(height: 12.0),
            BotonCalcular(onPressed: _calcular),
          ],
        ),
      ),
    );
  }  

}