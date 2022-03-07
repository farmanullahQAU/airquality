import 'package:airquality/Login.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'circularprogress.dart';
import 'package:flutter/animation.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;
  final Loginscreen loginscreen= Loginscreen();
  final databaseReference = FirebaseDatabase.instance.reference();
  late Animation<double> tempAnimation;
  late Animation<double> humidityAnimation;
  late AnimationController progressController;



  @override
  void initState() {
    super.initState();
    DatabaseReference databaseReference = FirebaseDatabase.instance.reference();
    databaseReference.child('air quality').onValue.listen((event) {
      final dataSnapshot = event.snapshot;

      double temp = dataSnapshot.value['Temperature']['Data'] ;
      double humidi = dataSnapshot.value['Humidity']['Data'];
      isLoading = true;
      _DashboardInit(temp, humidi);
    });

  }

  _DashboardInit(double temp, double humidi) {
    progressController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 5000)); //5s
    tempAnimation =
    Tween<double>(begin: -50, end: temp).animate(progressController)
      ..addListener(() {
        setState(() {});
      });

    humidityAnimation =
    Tween<double>(begin: -50, end: humidi).animate(progressController)
      ..addListener(() {
        setState(() {});
      });

    progressController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QAU Air Quality Monitoring System'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[400],
        automaticallyImplyLeading: false,
        leading: new IconButton(
            icon: Icon(Icons.reorder), onPressed: () {} ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CustomPaint(
              foregroundPainter:
              CircleProgress(tempAnimation.value, true),
              child: Container(
                width: 200,
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Temperature'),
                      Text(
                        '(tempAnimation.value.toInt()}',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'C',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
