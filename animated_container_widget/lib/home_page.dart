import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.blue;
  double boxX = 0;
  double boxY = 0;

  void _expandBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }

  void _changeBoxColor() {
    setState(() {
      boxColor = Colors.pink;
    });
  }

  void _moveBox() {
    setState(() {
      boxX = 1;
      boxY = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _expandBox();
        _changeBoxColor();
        _moveBox();
      },
      child: Scaffold(
        backgroundColor: Colors.deepOrange[200],
        body: AnimatedContainer(
          duration: Duration(seconds: 5),
          //0 0 is middle
          //-1 -1 is top left
          //1 1 is bottom right
          alignment: Alignment(boxX, boxY),
          //type of movement
          //curve: Curves.,
          child: Container(
            height: boxHeight,
            width: boxWidth,
            color: boxColor,
          ),
        ),
      ),
    );
  }
}
