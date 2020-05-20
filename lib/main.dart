import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: BinCalc(),
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  debugShowCheckedModeBanner: false,
));

class BinCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Coming soon!'),
        ),
      ),
    );
  }
}
