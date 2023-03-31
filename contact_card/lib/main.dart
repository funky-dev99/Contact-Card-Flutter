import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
            child: Column(
              children: [
                Container(
                  child: Text('Shahiru 01'),
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                  height: 100.0,
                  width: 100.0,
                  color: Colors.amberAccent,
                  margin: EdgeInsets.only(left: 10.0),
                ),
                Container(
                  child: Text('Shahiru 02'),
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                  height: 100.0,
                  width: 100.0,
                  color: Colors.blue,
                  margin: EdgeInsets.only(left: 10.0),
                ),
                Container(
                  child: Text('Shahiru 03'),
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                  height: 100.0,
                  width: 100.0,
                  color: Colors.deepPurple,
                  margin: EdgeInsets.only(left: 10.0),
                ),
              ],
            )
        ),
      ),
    );
  }
}

