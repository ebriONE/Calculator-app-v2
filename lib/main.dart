import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {

  int valueOfTheNumber = 0;

  @override
  Widget build(BuildContext context) {
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
            width: 450,
            height: 410,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: SizedBox(
                width: 30,
                child: Container(
                  color: Colors.pink[50],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0,330.0,20.0,4.0),
                    child: Text(
                      "$valueOfTheNumber",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
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
              buildButton("C", () {
                setState(() {
                  valueOfTheNumber = 0;
                });
              }),
              buildButton("(  )", () {
                //TODO add action
              }),
              buildButton("%", () {
                //TODO add action
              }),
              buildButton("/", () {
                //TODO add action
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton("7",() {
                setState(() {
                  valueOfTheNumber = 7;
                });
              }),
              buildButton("8",() {
                setState(() {
                  valueOfTheNumber = 8;
                });
              }),
              buildButton("9",() {
                setState(() {
                  valueOfTheNumber = 9;
                });
              }),
              buildButton("*", () {
                //TODO add action
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton("4",() {
                setState(() {
                  valueOfTheNumber = 4;
                });
              }),
              buildButton("5",() {
                setState(() {
                  valueOfTheNumber = 5;
                });
              }),
              buildButton("6",() {
                setState(() {
                  valueOfTheNumber = 6;
                });
              }),
              buildButton("-", () {
                //TODO add action
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton("1",() {
                setState(() {
                  valueOfTheNumber = 1;
                });
              }),
              buildButton("2",() {
                setState(() {
                  valueOfTheNumber = 2;
                });
              }),
              buildButton("3",() {
                setState(() {
                  valueOfTheNumber = 3;
                });
              }),
              buildButton("+", () {
                setState(() {
                  //TODO add action
                });
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton("+/-", () {
                //TODO add action
              }),
              buildButton("0",() {
                setState(() {
                  valueOfTheNumber = 0;
                });
              }),
              buildButton(",", () {
                //TODO add action
              }),
              buildButton("=", () {
                //TODO add action
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //TODO add action
            ],
          )
        ],
      ),
    );
  }

  Widget buildButton(String buttonText, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 70,
        height: 40,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            side: const BorderSide(width: 1.0),
            foregroundColor: Colors.deepOrange
          ),
          child: Text(buttonText),
        ),
      ),
    );
  }
}