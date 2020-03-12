import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Fase 1
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, primaryColor: Color(0xff00ff00)),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App de prueba"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(40),
                child: Text(
                  "Mi primera App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: _ownCard(
                      height: 100,
                      color: Colors.blueAccent,
                      text: "Vender comida de Gato",
                    ),
                    flex: 5,
                  ),
                  Expanded(
                    child: _ownCard(
                      height: 100,
                      color: Colors.blueAccent,
                      text: "Vender comida de Gato",
                    ),
                    flex: 5,
                  ),
                  /*Expanded(
                    child: InkWell(
                      child: Container(
                        height: 100,
                        child: Card(
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: Text("Comprar comida de gato", style: TextStyle(color: Colors.white),
                            ),
                          ),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    flex: 5,
                  ),*/
                ],
              ),
              InkWell(
                child: Container(
                  child: Text(
                    "Un diseño extraño",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 1,
                color: Colors.blueAccent,
                margin: EdgeInsets.all(1),
                child: Container(
                  width: 100,
                  height: 100,
                  child: FlatButton(
                    child: Text("!!"),
                    onPressed: () {
                      print("mew");
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ownCard extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color color;

  const _ownCard({Key key, this.height, this.width, this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: this.height,
        child: Card(
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
