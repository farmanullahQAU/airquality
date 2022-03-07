import 'dart:async';
import 'package:airquality/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Login.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}
class InitState extends State<Splash>{
  @override
  void initState(){
    super.initState();
    startTimer();
  }
  startTimer() async{
    var duration = Duration(seconds: 5);
    return new Timer(duration, FirstRoute());

  }
  FirstRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Dashboard() ));
  }
  @override
  Widget build(BuildContext context){
    return initWidget();
  }
  Widget initWidget(){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: new Color(0xFFFFFFFF),
              gradient: LinearGradient(
                colors: [(new Color(0xFFFFFFFF)), (new Color(0xFFFFFFFF))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

        /*  Center(
            child: Container(
              child: Image.asset("assets/images/air_quality-removebg-preview.png"),

            ),
          ),*/
        ],
      ),
    );
  }
}
