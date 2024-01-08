import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:stripe_app/config/data/tarjetas.dart';
import 'package:stripe_app/config/helpers/helpers.dart';
import 'package:stripe_app/presentation/screens/screens.dart';
import 'package:stripe_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Pagar'),
          actions: [
            IconButton(
              onPressed: () async {
                // mostrarLoading(context);
                // await Future.delayed(const Duration(seconds: 1)).then(
                //   (_) => Navigator.pop(context)
                // );
                mostrarAlerta(context, 'Hola', 'mundo');
                
              }, 
              icon: const Icon(Icons.add)
            )
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              width: size.width,
              height: size.height,
              top: 200,
              child: PageView.builder(
                itemCount: tarjetas.length,
                controller: PageController(
                  viewportFraction: 0.9
                ),
                itemBuilder: (context, index) {
                  final tarjeta = tarjetas[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, navegarMapaFadeIn(context, TarjetaScreen()));
                    },
                    child: Hero(
                      tag: tarjeta.cardNumber,
                      child: CreditCardWidget(
                          cardNumber: tarjeta.cardNumber, 
                          expiryDate: tarjeta.expiracyDate, 
                          cardHolderName: tarjeta.cardHolderName, 
                          cvvCode: tarjeta.cvv, 
                          showBackView: false, 
                          isSwipeGestureEnabled: false,
                          onCreditCardWidgetChange: (p0) => const SizedBox(),
                        ),
                    ),
                  );
                } 
              ),
            ),

            const Positioned(
              bottom: 0,
              child: TotalPayButton()
            )
          ],
        ));
  }
}
