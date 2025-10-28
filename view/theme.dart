
import 'package:flutter/material.dart';

// Tema principal de la aplicación
final ThemeData appTheme = ThemeData(
	primaryColor: const Color(0xFF1565C0),
	colorScheme: ColorScheme.fromSwatch(
		primarySwatch: Colors.blue,
		backgroundColor: Colors.white,
	),
	scaffoldBackgroundColor: Colors.white,
	appBarTheme: const AppBarTheme(
		backgroundColor: Color(0xFF1565C0),
		foregroundColor: Colors.white,
		elevation: 2,
		centerTitle: true,
		titleTextStyle: TextStyle(
			fontSize: 20,
			fontWeight: FontWeight.w600,
			color: Colors.white,
		),
	),
		textTheme: const TextTheme(
			bodyLarge: TextStyle(fontSize: 18.0, color: Colors.black87),
			bodyMedium: TextStyle(fontSize: 16.0, color: Colors.black87),
			titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
		),
	visualDensity: VisualDensity.adaptivePlatformDensity,
);

/// Estilos específicos para la pantalla de resultado
class ResultadoTheme {
	ResultadoTheme._(); // no-instanciable

	/// TextStyle usado en `ResultadoView` para mostrar el sueldo
	static const TextStyle resultadoText = TextStyle(
		fontSize: 24,
		fontWeight: FontWeight.w600,
		color: Colors.black87,
		height: 1.25,
	);

	/// Color de acento para valores importantes
	static const Color accent = Color(0xFF1565C0);

	/// Widget helper opcional que devuelve un Text ya estilizado
	static Widget resultadoTextWidget(String text) {
		return Text(
			text,
			style: resultadoText,
			textAlign: TextAlign.center,
		);
	}
}

