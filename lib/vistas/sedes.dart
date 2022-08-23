import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/wcWidgets.dart';

class sedes extends StatelessWidget {
  const sedes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5DDE0),
      body: Center(
        child: Container(
          width: 320,
          height: 620,
          decoration: BoxDecoration(
            color: const Color(0xFFF5DDE0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image(image: AssetImage("assets/ubicacion.png")),
              Spacer(flex: 2),
              titleTextsedes("Medellín"),
              Spacer(flex: 2),
              titleTextfact("Laureles    Circular 1 # 70-03"),
              Spacer(flex: 2),
              titleTextfact("Poblado     Calle 10 #03-21"),
              Spacer(flex: 2),
              titleTextsedes("Rionegro"),
              Spacer(flex: 2),
              titleTextfact("Carrera 20 #06-21"),
              Spacer(flex: 2),
              titleTextsedes("Envigado"),
              Spacer(flex: 2),
              titleTextfact("Carrera 36#02-21"),
            ],
          ),
        ),
      ),
    );
  }
}
