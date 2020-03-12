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
                    child: InkWell(
                      child: Container(
                        height: 100,
                        child: Card(
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              "Vender comida de gato",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    flex: 5,
                  ),
                  Expanded(
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
                  ),
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
              //_CardWidget(
              //  child: Container(child: Text("F", style: TextStyle(color: Colors.white),),),
              //  height: 100,
              //  width: 100,
              //)
            ],
          ),
        ),
      ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  final Widget child;

  final double width;
  final double height;

  const _CardWidget({Key key, this.child, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.child,
      height: this.height,
      width: this.width,
      color: Colors.blueAccent,
      padding: EdgeInsets.all(15),
    );
  }
}
