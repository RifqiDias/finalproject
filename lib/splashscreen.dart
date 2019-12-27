import 'package:finalproject/homepage.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  @override
  void initState() { 
    super.initState();
    startSplashScreen();
    
  }

    startSplashScreen() async{
      var duration = const Duration(seconds: 2);
      return Timer(duration, () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) {
            return HomePage();
          }
        ));
      });
    }
  
 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("042548"),
    body: Center(
      child: Image.asset("assets/images/eudeka.png",
      width: 200.0,
      height: 100,),
    ),  );
  }

}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}