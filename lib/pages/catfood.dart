import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int _currentIndex = 0;
  static Map<int, List> _brandMap = {
    0: ['Whiska', '30'],
    1: ['JUNAECats', '1'],
    2: ['ScumFood', '31'],
    3: ['IDDDDD', '22']
  };

  double _amount = 1;
  int _price = int.parse(_brandMap[0][1]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buy sum food"),
      ),
      body: SafeArea(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 250,
              child: Center(
                child: Container(
                  child: Text(
                    _brandMap[_currentIndex][0],
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  color: Colors.black,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (_currentIndex == 0) {
                        _currentIndex = _brandMap.length - 1;
                        _price = int.parse(_brandMap[_currentIndex][1]);
                      } else {
                        _currentIndex -= 1;
                        _price = int.parse(_brandMap[_currentIndex][1]);
                      }
                    });
                  },
                ),
                FlatButton(
                  color: Colors.black,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (_currentIndex == _brandMap.length) {
                        _currentIndex = 0;
                        _price = int.parse(_brandMap[_currentIndex][1]);
                      } else {
                        _currentIndex += 1;
                        _price = int.parse(_brandMap[_currentIndex][1]);
                      }
                    });
                  },
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15.0),
                child: Slider(
                  value: _amount,
                  onChanged: (value) {
                    setState(() {
                      _amount = value;
                    });
                  },
                  min: 1.0,
                  max: 100.0,
                ),
              ),
            ),
            Center(
              child: Text(
                "${_amount.floor()} Kg = ${_amount.floor() * _price} LRCOINS",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(height: 200,)
          ],
        ),
      ),
    );
  }
}
