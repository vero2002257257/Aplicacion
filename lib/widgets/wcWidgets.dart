import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

GestureDetector largeButton(param0, Color transparent, String s) {
  return GestureDetector(
    onTap: param0,
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(child: Text(s)),
    ),
  );
}

Container card(
    String imageRoute, String title, String subtitle, VoidCallback funct) {
  return Container(
    height: 140,
    width: 840,
    color: Colors.white,
    child: GestureDetector(
      onTap: funct,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 10, color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                titleText(title),
                subTitleText(subtitle),
              ],
            ),
          ),
          SizedBox(height: 120, child: Image(image: AssetImage(imageRoute)))
        ],
      ),
    ),
  );
}

GestureDetector smallButton(param0, Color transparent, String s) {
  return GestureDetector(
    onTap: param0,
    child: Container(
      width: 30,
      height: 20,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(child: Text(s)),
    ),
  );
}

Text titleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
      color: Colors.black12,
    ),
  );
}

Text subTitleText(String text) {
  return Text(
    text,
    style: const TextStyle(
        //Acá le pongo todo lo que necesito del texto, tambien puede ser el color y eso
        fontSize: 17,
        fontWeight: FontWeight.w300,
        color: Color(0xFFDB7093)),
    textAlign: TextAlign.center,
  );
}

Text titleTextfact(String text) {
  return Text(
    text,
    style: const TextStyle(
        //Acá le pongo todo lo que necesito del texto, tambien puede ser el color y eso
        fontSize: 17,
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 145, 141, 142)),
    textAlign: TextAlign.center,
  );
}

Text titleTextsedes(String text) {
  return Text(
    text,
    style: const TextStyle(
        //Acá le pongo todo lo que necesito del texto, tambien puede ser el color y eso
        fontSize: 19,
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 102, 96, 96)),
    textAlign: TextAlign.center,
  );
}
