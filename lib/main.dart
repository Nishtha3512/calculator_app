import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var num1 = 0;
  var num2 = 0;
  var Result = 0;
  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      Result = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      Result = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      Result = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      Result = (num1 / num2).toInt();
    });
  }

  void doClear() {
    setState(() {
      num1 = 0;
      num2 =0;
      Result=0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calculator App",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Calculator App"),
              backgroundColor: Colors.blueGrey,
            ),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Output :$Result ", style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )
                  ),

                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Enter Number 1"
                    ),
                    controller: t1,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Enter Number 2"),
                    controller: t2,

                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Text("+"),
                        onPressed: () {
                          doAddition();
                        },
                      ),
                          SizedBox(width:8),
                      RaisedButton(
                        child: Text("-"),
                        onPressed: () {
                          doSub();
                        },
                      ),
                      //      SizedBox(width: 4,height: 4,),

                    ],
                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Text("*"),
                        onPressed: () {
                          doMul();
                        },
                      ),
                         SizedBox(width: 8),
                      RaisedButton(
                        child: Text("/"),
                        onPressed: () {
                          doDiv();
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Text("Clear"),
                        color: Colors.greenAccent,
                        onPressed: () {
                          doClear();
                        },
                      )
                    ],
                  )
                ],
              ),
            )
        )
    );
  }
}

