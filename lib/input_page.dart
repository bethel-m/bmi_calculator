import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                color: Color(0xFF1D1E33),
                height: 100,
                width: 50,
              ),
              Container(
                color: Color(0xFF1D1E33),
                height: 200,
                width: 200,
              )
            ],
          ),
          Container(
            color: Color(0xFF1D1E33),
            height: 200,
            width: 200,
          ),
          Row(
            children: [
              Container(
                color: Color(0xFF1D1E33),
                height: 200,
                width: 200,
              ),
              Container(
                color: Color(0xFF1D1E33),
                height: 200,
                width: 200,
              )
            ],
          ),
        ],
      ),
    );
  }
}
