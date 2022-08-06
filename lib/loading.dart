import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:workoutapp/home.dart';
import 'dart:async';
import 'home.dart';

class Loading extends StatefulWidget {
  const Loading ({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}


class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Home())),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: SpinKitSpinningLines(
          color: Colors.limeAccent,
          size: 80.0,
        ),

      ),
    );
  }
}
