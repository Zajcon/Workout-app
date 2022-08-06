import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ButtonStyle style =
  ElevatedButton.styleFrom(primary: Colors.limeAccent,
      textStyle: TextStyle(
        fontSize: 20,
        color: Colors.black87,
      ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.menu,
                  color: Colors.black87),
              title: Text('Workout App',
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
            backgroundColor: Colors.black87,
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Divider(
                      height: 20,
                      color: Colors.grey[300],
                    ),
                    Container(
                      width: 300,
                      height: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/exercise');
                            },
                          style: style,
                          child: const Text('New workout',
                              style: TextStyle(
                                  color: Colors.black87)
                          )
                      ),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.grey[300],
                    ),
                    Container(
                      width: 300,
                      height: 80,
                      child: ElevatedButton(onPressed: () {},
                        style: style,
                        child: const Text('Previous workout',
                            style: TextStyle(
                                color: Colors.black87)
                        ),
                      ),
                    ),
                    Divider(
                      height: 30,
                      color: Colors.grey[700],
                    ),
                    Container(
                      width: 300,
                      height: 80,
                      child: ElevatedButton(onPressed: () {},
                          style: style,
                          child: const Text('Measurments',
                              style: TextStyle(
                                  color: Colors.black87)
                          )),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.grey[300],
                    ),
                  ]
              ),
            )
        )
    );
  }
}
