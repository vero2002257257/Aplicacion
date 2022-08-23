import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/wcWidgets.dart';

class menu2 extends StatelessWidget {
  menu2({Key? key}) : super(key: key);
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF5DDE0),
      body: Center(
          child: Container(
        width: 282,
        height: screenHeight * 0.9,
        //Acá se mira a que porcentaje ponerle con el * y el numeor
        decoration: BoxDecoration(
          color: const Color(0xFC6998),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Image(image: AssetImage("assets/menu2.png")),
          ],
        ),
      )),
    );
  }
}
