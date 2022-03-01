import 'package:flutter/material.dart';

// import 'MyBody.dart';
// import 'Fox.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Приложение от Богдана",
                style: TextStyle(fontSize: 30),
              ),
            ),
            body: Column(
              children: [MyButton(), MyButton(), MyButton()],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
            )));
  }
}

class MyButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int value = 0;
  double fontSize = 26;
  Color color = Colors.black54;
  Color buttonFontColor = Colors.deepOrangeAccent;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(
          value <= 15 ? "Значение: $value" : "Больше 15",
          style: TextStyle(fontSize: fontSize, color: buttonFontColor),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          setState(() {
            value = value + 1;
            if (value > 3) {
              fontSize = 36;
            }
            if (value > 10) {
              buttonFontColor = Colors.pink;
            }
            if (value > 7) {
              color = Colors.lightBlue;
            }
          });
        });
  }
}
