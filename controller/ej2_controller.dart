// ...existing code...
import '../model/ej2_modelo.dart';

class Ej2Controller {

  static dynamic procesarEntradas(List<String?> entradas) {
    if (entradas.length != 100) {
      return 'Se requieren exactamente 100 entradas. Volver a ingresar.';
    }

    final List<int> numeros = <int>[];

    for (int i = 0; i < entradas.length; i++) {
      final textoEntrada = entradas[i];
      if (textoEntrada == null) {
        return 'La entrada ${i + 1} está vacía. Volver a ingresar.';
      }

      final texto = textoEntrada.trim();
      if (texto.isEmpty) {
        return 'La entrada ${i + 1} está vacía. Volver a ingresar.';
      }

      final valor = int.tryParse(texto);
      if (valor == null) {
        return 'La entrada ${i + 1} no es un entero válido. Volver a ingresar.';
      }

      if (valor < 0) {
        return 'La entrada ${i + 1} debe ser un número natural (>= 0). Volver a ingresar.';
      }

      numeros.add(valor);
    }

    return Ej2Modelo.analizar(numeros);
  }
}
