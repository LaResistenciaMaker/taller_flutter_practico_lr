import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class CatDetails extends StatefulWidget {
  CatDetails({Key key}) : super(key: key);

  @override
  _CatDetailsState createState() => _CatDetailsState();
}

class _CatDetailsState extends State<CatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PetChooser"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              FutureBuilder(
                future: () async {
                  final data = await http.get("https://catfact.ninja/fact");
                  final response = json.decode(data.body);
                  String text = response["fact"];
                  return text;
                }(),
                builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if(snapshot.data!=null){
                    return Text(snapshot.data, style: TextStyle(fontSize: 20),);
                  } else {
                    return Text("cargando");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
