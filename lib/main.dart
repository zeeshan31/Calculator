import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var n1 = 0, n2 = 0, sum = 0;
  String see = '';
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void Add() {
    setState(() {
      see='';
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 + n2;
    });
  }

  void Sub() {
    setState(() {
      see='';
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 - n2;
    });
  }

  void Mul() {
    setState(() {
      see='';
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 * n2;
    });
  }

  void Div() {
    setState(() {
      see='';
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 ~/ n2;
    });
  }

  

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: Scaffold(
          appBar: AppBar(title: Text('Calculator')),
          body: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Output $sum $see', style: TextStyle(fontSize: 20.0, color: Colors.orange, fontWeight: FontWeight.bold)),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration:
                          InputDecoration(hintText: "Enter First Number"),
                      controller: t1,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration:
                          InputDecoration(hintText: "Enter Second Number"),
                      controller: t2,
                    ),
                    Padding(padding: const EdgeInsets.all(20.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: Add,
                          child: Text('Plus'),
                          color: Colors.greenAccent,
                        ),
                        Padding(padding: const EdgeInsets.all(20.0)),
                        MaterialButton(
                          onPressed: Sub,
                          child: Text('Subtract'),
                          color: Colors.greenAccent,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: Mul,
                          child: Text('Multiply'),
                          color: Colors.greenAccent,
                        ),
                        Padding(padding: const EdgeInsets.all(20.0)),
                        MaterialButton(
                          onPressed: Div,
                          child: Text('Divide'),
                          color: Colors.greenAccent,
                        )
                      ],
                    )
                  ])),
        ));
  }
}
