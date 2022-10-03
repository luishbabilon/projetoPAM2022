import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController pNum = TextEditingController();
  TextEditingController sNum = TextEditingController();
  TextEditingController tNum = TextEditingController();
  String ordenacao = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Ordenação de Números'),
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.filter_9_plus,
                color: const Color(0xFF000000), size: 54.0),
            new Text(
              "Primeiro número:",
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: pNum,
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new Text(
              "Segundo número:",
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: sNum,
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new Text(
              "Terceiro número:",
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: tNum,
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Ordenação:",
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  ),
                  new Text(
                    ordenacao,
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  )
                ]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                      key: null,
                      onPressed: ordenar,
                      color: const Color(0xFFe0e0e0),
                      child: new Text(
                        "Ordernar",
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      )),
                  new RaisedButton(
                      key: null,
                      onPressed: limpar,
                      color: const Color(0xFFe0e0e0),
                      child: new Text(
                        "Limpar",
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      ))
                ])
          ]),
    );
  }

  void ordenar() {
    int pN, sN, tN;
    pN = int.parse(pNum.text);
    sN = int.parse(sNum.text);
    tN = int.parse(tNum.text);
    setState(() {
      if ((pN > sN) && (pN > tN)) {
        if (sN > tN) {
          ordenacao =
              pN.toString() + ", " + sN.toString() + ", " + tN.toString();
        } else {
          ordenacao =
              pN.toString() + ", " + tN.toString() + ", " + sN.toString();
        }
      } else if ((sN > pN) && (sN > tN)) {
        if (pN > tN) {
          ordenacao =
              sN.toString() + ", " + pN.toString() + ", " + tN.toString();
        } else {
          ordenacao =
              sN.toString() + ", " + tN.toString() + ", " + pN.toString();
        }
      } else if ((tN > pN) && (tN > sN)) {
        if (pN > sN) {
          ordenacao =
              tN.toString() + ", " + pN.toString() + ", " + sN.toString();
        } else {
          ordenacao =
              tN.toString() + ", " + sN.toString() + ", " + pN.toString();
        }
      }
    });
  }

  void limpar() {
    pNum.text = "";
    sNum.text = "";
    tNum.text = "";
    setState(() {
      ordenacao = "";
    });
  }
}
