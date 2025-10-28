/*
un algoritmo tal que ingresados 100 números
naturales, permita determinar y mostrar:
a. ¿Cuántos son menores que 15?
b. ¿Cuántos son mayores que 50?
c. ¿Cuántos están comprendidos entre 25 y 45?
d. ¿Cuál es el promedio de los 100 números?

.
*/

class Ej2Modelo {
  final int menores15;
  final int mayores50;
  final int entre25y45;
  final double promedio;

  Ej2Modelo({
    required this.menores15,
    required this.mayores50,
    required this.entre25y45,
    required this.promedio,
  });

  /// Analiza la lista de números y devuelve un Ej2Modelo con los cálculos.
  /// Deja la validación de entradas (nulos, vacíos, parseo) al controlador.
  static Ej2Modelo analizar(List<int> numeros) {
    int menores15 = 0;
    int mayores50 = 0;
    int entre25y45 = 0;
    int suma = 0;

    for (final n in numeros) {
      if (n < 15) menores15++;
      if (n > 50) mayores50++;
      if (n >= 25 && n <= 45) entre25y45++;
      suma += n;
    }

    final promedio = numeros.isEmpty ? 0.0 : suma / numeros.length;

    final resultado =  Ej2Modelo(
      menores15: menores15,
      mayores50: mayores50,
      entre25y45: entre25y45,
      promedio: promedio,
    );
    
    return resultado;
  }

}


