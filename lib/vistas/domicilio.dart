import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/pedir.dart';

import '../widgets/wcWidgets.dart';

class domicilio extends StatelessWidget {
  const domicilio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5DDE0),
      body: Center(
        child: Container(
          width: 280,
          height: 620,
          decoration: BoxDecoration(
            color: const Color(0xFFF5DDE0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image(image: AssetImage("assets/domicilio.png")),
              Spacer(flex: 1),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Nombre ",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Dirección",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Teléfono",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Nombre de producto(s)",
                  ),
                ),
              ),
              Spacer(),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return pedir();
                    },
                  ),
                );
              }, Colors.amber, "PEDIR"),
              Spacer(),
              subTitleText("Gracias por preferirnos "),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
