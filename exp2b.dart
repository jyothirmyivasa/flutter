//Row Layout
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Row Layout')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // Spaces children evenly in the row
          children: <Widget>[
            Container(color: Colors.red, width: 100, height: 100),
            Container(color: Colors.green, width: 100, height: 100),
            Container(color: Colors.blue, width: 100, height: 100),
          ],
        ),
      ),
    );
  }
}

//Column Layout
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Column Layout')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // Spaces children evenly in the column
          children: <Widget>[
            Container(color: Colors.red, width: 100, height: 100),
            Container(color: Colors.green, width: 100, height: 100),
            Container(color: Colors.blue, width: 100, height: 100),
          ],
        ),
      ),
    );
  }
}

//StackWidget
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // ✅ Added Key

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack Layout')),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(color: Colors.red, width: 200, height: 200),
              Container(color: Colors.green, width: 150, height: 150),
              Container(color: Colors.blue, width: 100, height: 100),
            ],
          ),
        ),
      ),
    );
  }
}



