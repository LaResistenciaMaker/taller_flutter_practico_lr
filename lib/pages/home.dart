import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PetChooser"),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(40),
                child: Text(
                  "PetChooser",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: _OwnButton(
                      height: 80,
                      color: Colors.blueAccent,
                      text: "Acerca de los gatos",
                      onPressed: () => Navigator.pushNamed(context, "data"),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: _OwnButton(
                        height: 80,
                        color: Colors.blueAccent,
                        text: "Comprar comida de Gato",
                        onPressed: () => Navigator.pushNamed(context, "food")),
                  ),
                ],
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Multitud de gatos para escoger",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  height: 50,
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: <Widget>[
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "yup!",
                    image: AssetImage("assets/cat1.jpg"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                  _OwnCard(
                    text: "Nope!",
                    image: NetworkImage("https://i.blogs.es/3861b2/grumpy-cat/450_1000.png"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _OwnCard extends StatelessWidget {
  final ImageProvider<dynamic> image;
  final String text;
  const _OwnCard({
    this.image,
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: EdgeInsets.all(1),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: image,
              fit: BoxFit.contain,
              alignment: Alignment.topCenter),
        ),
        width: 100,
        height: 100,
        child: FlatButton(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(text),
          ),
          onPressed: () {
            print("mew");
          },
        ),
      ),
    );
  }
}

/// [_OwnButton] Mi propio botón
/// 
/// Un boton diseñado que acepta un [height] y un [width]
class _OwnButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color color;
  final Function onPressed;
  const _OwnButton(
      {Key key,
      this.height = 100,
      this.width,
      this.text,
      this.color,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: EdgeInsets.all(10),
        child: Container(
          height: this.height,
          child: FlatButton(
            color: Colors.blueAccent[200],
            onPressed: onPressed,
            child: Center(
              child: Align(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
