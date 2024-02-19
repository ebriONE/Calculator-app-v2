import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {

  int valueOfTheNumber = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    //double width = screenSize.width * 1.0;
    //double height = screenSize.height * 0.4500;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: false,
      ),
      backgroundColor: Colors.purple[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: SizedBox(
                width: 30,
                child: Container(
                  color: Colors.pink[50],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0,270.0,20.0,4.0),
                    child: Text(
                      "$valueOfTheNumber",
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        fontSize: 40.0
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton("C",Colors.red,Colors.black, () {
                setState(() {
                  valueOfTheNumber = 0;
                });
              }),
              buildButton("(  )", Colors.green,Colors.black,() {
                //TODO add action
              }),
              buildButton("%",Colors.green,Colors.black, () {
                //TODO add action
              }),
              buildButton("/",Colors.green,Colors.black, () {
                //TODO add action
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton("7",Colors.orange,Colors.black,() {
                setState(() {
                  valueOfTheNumber = 7;
                });
              }),
              buildButton("8",Colors.orange,Colors.black,() {
                setState(() {
                  valueOfTheNumber = 8;
                });
              }),
              buildButton("9",Colors.orange,Colors.black,() {
                setState(() {
                  valueOfTheNumber = 9;
                });
              }),
              buildButton("*",Colors.green,Colors.black, () {
                //TODO add action
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton("4",Colors.orange,Colors.black,() {
                setState(() {
                  valueOfTheNumber = 4;
                });
              }),
              buildButton("5",Colors.orange,Colors.black,() {
                setState(() {
                  valueOfTheNumber = 5;
                });
              }),
              buildButton("6",Colors.orange,Colors.black,() {
                setState(() {
                  valueOfTheNumber = 6;
                });
              }),
              buildButton("-",Colors.green,Colors.black, () {
                //TODO add action
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton("1",Colors.orange,Colors.black,() {
                setState(() {
                  valueOfTheNumber = 1;
                });
              }),
              buildButton("2",Colors.orange,Colors.black,() {
                setState(() {
                  valueOfTheNumber = 2;
                });
              }),
              buildButton("3",Colors.orange,Colors.black,() {
                setState(() {
                  valueOfTheNumber = 3;
                });
              }),
              buildButton("+", Colors.green,Colors.black,() {
                setState(() {
                  //TODO add action
                });
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton("+/-", Colors.orange,Colors.black,() {
                //TODO add action
              }),
              buildButton("0", Colors.orange,Colors.black, () {
                setState(() {
                  valueOfTheNumber = 0;
                });
              }),
              buildButton(",",Colors.orange,Colors.black, () {
                //TODO add action
              }),
              buildButton("=",Colors.white,Colors.teal, () {
                //TODO add action
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton(String buttonText, Color color, Color background, VoidCallback onPressed,) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 70,
        height: 50,
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            side: MaterialStateProperty.all<BorderSide>(
              const BorderSide(width: 0.0),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(color),
            backgroundColor: MaterialStateProperty.all<Color>(background),
          ),
          child: Text(buttonText,
          style: const  TextStyle(
            fontSize: 24.0
          ),
          ),
        ),
      ),
    );
  }
}