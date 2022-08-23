import 'package:flutter/material.dart';
import 'package:restaurante/vistas/welcomePage.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: WelcomePage(),
      ),
    );
  }
}
