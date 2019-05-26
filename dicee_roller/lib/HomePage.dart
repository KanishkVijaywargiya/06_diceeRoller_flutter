import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceeImage;

  @override
  void initState(){
    super.initState();
    
    //when we need to change anything we need to call setState(() {})
    setState(() {
      diceeImage = one;
    });
  }

  void rollDicee(){
    int random = (1 + Random().nextInt(6));

    AssetImage newImage;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
      default:
    }

    setState(() {
      diceeImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicee Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceeImage,
                width: 200.0,
                height: 200.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: FloatingActionButton(
                  child: Icon(
                    Icons.bubble_chart
                  ),
                  backgroundColor: Colors.yellow,
                  onPressed: rollDicee,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}