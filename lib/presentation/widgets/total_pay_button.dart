import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TotalPayButton extends StatelessWidget {
  const TotalPayButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      width: size.width,
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Colors.white,
      ),
      child:  const Row(
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Total', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
               Text('250.55 USD', style: TextStyle(color: Colors.black, fontSize: 20),),
            ],
          ),

          Spacer(),

          _BtnPay()




         
        ],
      ),
    );
  }
}

class _BtnPay extends StatelessWidget {
  const _BtnPay();

  @override
  Widget build(BuildContext context) {
    return true 
    ? const _BuildBtnTarjeta() 
    : const _BuildBtnGoogleAndApplePay();
  }
}

class _BuildBtnTarjeta extends StatelessWidget {
  const _BuildBtnTarjeta();

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(200, 50))
      ), 
      child: const Row(
        children: [
          Icon(FontAwesomeIcons.creditCard),
          SizedBox(width: 15,),
          Text('Pagar', style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}

class _BuildBtnGoogleAndApplePay extends StatelessWidget {
  const _BuildBtnGoogleAndApplePay();

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(200, 50)),
      ), 
      child: Row(
        children: [
          Icon(
            Platform.isAndroid
              ? FontAwesomeIcons.google
              : FontAwesomeIcons.apple
          ),
          const SizedBox(width: 15,),
          const Text('Pagar', style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}