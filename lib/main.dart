import 'package:flutter/material.dart';
import 'package:stripe_app/presentation/screens/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => const HomeScreen(),
        'pago_completo': ( _ ) => const PagoCompletoScreen(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xff284879),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 19, 80, 171),
        ),
        scaffoldBackgroundColor: const Color(0xff21232A)
      )
    );
  }
}
