import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void doadd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void dosub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void domul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void dodiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void domod() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 % num2;
    });
  }

  void decimal() {
    setState(() {
      print(".");
    });
  }

  void doclear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculatorbaazi"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("OUTPUT-BAAZI:$sum",
                style: new TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 1",
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 2",
              ),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(
                  child: new Text("+bazi",
                      style: new TextStyle(color: Colors.white)),
                  color: Colors.purple,
                  onPressed: doadd,
                ),
                new MaterialButton(
                  color: Colors.purple,
                  child: new Text("-bazi",
                      style: new TextStyle(color: Colors.white)),
                  onPressed: dosub,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(
                  color: Colors.purple,
                  child: new Text(
                    "*bazi",
                    style: new TextStyle(color: Colors.white),
                  ),
                  onPressed: domul,
                ),
                new MaterialButton(
                  color: Colors.purple,
                  child: new Text("/bazi",
                      style: new TextStyle(color: Colors.white)),
                  onPressed: dodiv,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(
                  color: Colors.purple,
                  child: new Text("%bazi",
                      style: new TextStyle(color: Colors.white)),
                  onPressed: domod,
                ),
                new MaterialButton(
                  color: Colors.purple,
                  child: new Text("CLEAR",
                      style: new TextStyle(color: Colors.white)),
                  onPressed: doclear,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
