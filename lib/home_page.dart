import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController t1 = new TextEditingController(text: "0");

  final TextEditingController t2 = new TextEditingController(text: "0");
  var num1 = 0, num2 = 0, sum = 0;

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDivi() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      num1 = 0;
      num2 = 0;
      sum = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "$sum",
              textScaleFactor: 1.5,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.grey,
              ),
            ),
            new Padding(
              padding: EdgeInsets.all(40.0),
            ),
            new TextField(
              controller: t1,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 1"),
            ),
            new TextField(
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 2"),
            ),
            new Padding(
              padding: EdgeInsets.only(top: 40.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  textColor: Colors.white,
                  color: Colors.redAccent,
                  child: new Text("+"),
                  onPressed: doAddition,
                ),
                new MaterialButton(
                  textColor: Colors.white,
                  color: Colors.redAccent,
                  child: new Text("-"),
                  onPressed: doSub,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  textColor: Colors.white,
                  color: Colors.redAccent,
                  child: new Text("*"),
                  onPressed: doMul,
                ),
                new MaterialButton(
                  textColor: Colors.white,
                  color: Colors.redAccent,
                  child: new Text("/"),
                  onPressed: doDivi,
                ),
              ],
            ),
            new Padding(
              padding: EdgeInsets.all(10.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  color: Colors.greenAccent,
                  child: new Text("Clear"),
                  onPressed: doClear,
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
