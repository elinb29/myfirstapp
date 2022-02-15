import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text(
        "Привет 4 курс",
      ),
    ),
    body: Align(
      alignment: Alignment(0, 0),
      child: Text(
        'Скорее бы вернуться в универ',
        style: TextStyle(
            fontSize: 42, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ),
  )));
}
