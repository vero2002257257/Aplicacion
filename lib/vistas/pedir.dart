import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/wcWidgets.dart';
import 'menu2.dart';

class pedir extends StatelessWidget {
  pedir({Key? key}) : super(key: key);

  double screenHeight = 0.0;
  double screenWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5DDE0),
      body: Center(
        child: Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.9,
          decoration: BoxDecoration(
            color: const Color(0xFFF5DDE0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Image(image: AssetImage("assets/pedir.png")),
              Spacer(flex: 2),
              titleTextfact("Factura #"),
              Spacer(flex: 2),
              titleTextfact("Nombre de producto"),
              Spacer(flex: 2),
              titleTextfact("Cantidad"),
              Spacer(flex: 2),
              titleTextfact("Contacto"),
              Spacer(flex: 2),
              titleTextfact("Total pago"),
              Spacer(flex: 2),
              titleTextfact("Método de pago"),
            ],
          ),
        ),
      ),
    );
  }
}
