import 'package:flutter/material.dart';
import 'package:workoutapp/exerciseschoose.dart';
import 'package:workoutapp/home.dart';
import 'loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (BuildContext context) => new Loading(),
      '/home': (BuildContext context) => new Home(),
      '/exercise': (BuildContext context) => new Exercise(),
    },
  ));
}