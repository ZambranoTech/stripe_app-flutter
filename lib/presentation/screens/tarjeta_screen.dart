import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:stripe_app/domain/entities/tarjeta_credito.dart';
import 'package:stripe_app/presentation/widgets/widgets.dart';

class TarjetaScreen extends StatelessWidget {
  const TarjetaScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const tarjeta = TarjetaCredito(
      cardNumberHidden: '4242',
      cardNumber: '4242424242424242',
      brand: 'visa',
      cvv: '213',
      expiracyDate: '01/25',
      cardHolderName: 'Fernando Herrera'
    );

    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Pagar'),
        ),
        body: Stack(
          children: [

            Container(),

            Hero(
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


             const Positioned(
              bottom: 0,
              child: TotalPayButton()
            )
          ],
        ),
      )
    );
  }
}