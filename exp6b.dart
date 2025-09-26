import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Theme & Custom Styles Demo',
      theme:ThemeData(
        primarySwatch:Colors.deepPurple,
        brightness:Brightness.light,
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal:32, vertical: 16),
            textStyle: TextStyle(fontSize: 16),
          ),
        ),
      ),
      home:HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Themed AppBar'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'This is a Headline',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 16),
            Text(
              'This is body text using custom theme.',
              style:Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed:(){
                print('Button pressed!');
              },
              child: Text('Themed Button'),
              ),
              SizedBox(height:24),
              Text(
                'Custom Styled Text',
                style:TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight:FontWeight.w600,
                  letterSpacing:2,
                ),
              ),
          ],
          ),
        ),  
      );
  }
}
