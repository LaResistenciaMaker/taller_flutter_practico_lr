import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:taller_flutter_practico_lr/pages/catfood.dart';
import 'package:taller_flutter_practico_lr/pages/home.dart';
import 'package:taller_flutter_practico_lr/pages/kitten.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Fase 1
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "food" : (BuildContext context) => FoodPage(),
        "data" : (BuildContext context) => CatDetails()
      },
      title: 'PetApp',
      theme: ThemeData(
        brightness: Brightness.light,
          primarySwatch: Colors.blue, 
          primaryColor: Colors.blueAccent,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[300]
          )    
      ),
      home: Home(),
    );
  }
}

