import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  const Exercise ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back,
                  color: Colors.black87),
              onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Choose exercises',
            style: TextStyle(
            color: Colors.black87)),
        centerTitle: true,
        backgroundColor: Colors.limeAccent,
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add,
          color: Colors.black87,
          size: 36,
        ),
        backgroundColor: Colors.limeAccent,
      ),
    );
  }
}
