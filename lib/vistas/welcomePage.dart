import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/domicilio.dart';
import 'package:restaurante/vistas/menu.dart';
import 'package:restaurante/vistas/menu2.dart';
import 'package:restaurante/vistas/sedes.dart';
import 'package:restaurante/vistas/signInPage.dart';

import '../widgets/wcWidgets.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  double screenHeight = 0.0;
  double screenWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF5DDE0),
      body: Center(
          child: Container(
        width: 200,
        height: screenHeight * 0.9,
        //Acá se mira a que porcentaje ponerle con el * y el numeor
        decoration: BoxDecoration(
          color: const Color(0xFC6998),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Spacer(flex: 1),
            subTitleText("Restaurante de tortas y postres"),
            Spacer(flex: 2),
            const Image(image: AssetImage("assets/panadera.png")),
            Spacer(flex: 2),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignInPage();
                  },
                ),
              );
            }, Colors.transparent, "REGISTRAR USUARIO"),
            Spacer(flex: 1),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return menu();
                  },
                ),
              );
            }, Colors.amber, "MENÚ TRADICIONALES"),
            Spacer(flex: 1),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return menu2();
                  },
                ),
              );
            }, Colors.amber, "EXCLUSIVOS FRANCESES"),
            Spacer(flex: 1),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return sedes();
                  },
                ),
              );
            }, Colors.amber, "SEDES"),
            Spacer(flex: 1),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return domicilio();
                  },
                ),
              );
            }, Colors.amber, "PEDIR DOMICILIO"),
          ],
        ),
      )),
    );
  }
}
