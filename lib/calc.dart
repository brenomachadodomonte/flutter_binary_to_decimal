import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {

  final binController = TextEditingController();
  final decController  = TextEditingController();

  void _binaryChanged(String text){
    decController.text = (text == '') ? '' : int.parse(text, radix: 2).toString();
  }

  void _decimalChanged(String text){
    binController.text = (text == '') ? '' : int.parse(text).toRadixString(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bin2Dec'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('BM2'),
            Text('Binary to Decimal', style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),
            TextField(
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly,
                WhitelistingTextInputFormatter(RegExp('[0-1]'))
              ],
              decoration: InputDecoration(
                labelText: 'Binary',
                labelStyle: TextStyle(color: Colors.grey[700]),
                border: OutlineInputBorder(),
              ),

              style: TextStyle(color: Colors.grey[700]),
              controller: binController,
              keyboardType: TextInputType.number,
              onChanged: _binaryChanged,
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                labelText: 'Decimal',
                labelStyle: TextStyle(color: Colors.grey[700]),
                border: OutlineInputBorder(),
              ),
              style: TextStyle(color: Colors.grey[700]),
              controller: decController,
              keyboardType: TextInputType.number,
              onChanged: _decimalChanged,
            ),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: <Widget>[
                  Text('There are 10 kind of people, those who knows binary and those who don\'t.',textAlign: TextAlign.center,),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }

}
