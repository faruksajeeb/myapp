import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            appBar: AppBar(
              title: Text("Header"),
              backgroundColor: Colors.cyan,
            ),
            body: GridView.count(
              crossAxisCount:2,
              childAspectRatio: 1.0,
              children: [
                Container(color: Colors.red,),
                Container(color: Colors.green,),
                Container(color: Colors.blue,),
                Container(color: Colors.red,),
                Container(color: Colors.green,),
                Container(color: Colors.blue,),
                Container(color: Colors.red,),
                Container(color: Colors.green,),
                Container(color: Colors.blue,),
              ],
            )
          )
    );
  }
}
