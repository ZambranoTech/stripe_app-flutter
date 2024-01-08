import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PagoCompletoScreen extends StatelessWidget {
  const PagoCompletoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pago Realizado!'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.star, size: 100, color: Colors.white54,),
            SizedBox(height: 20,),
            Text('Pago realizado correctamente!', style: TextStyle(color: Colors.white, fontSize: 22),)
          ],
        ),
      ),
    );
  }
}