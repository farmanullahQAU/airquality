import 'package:airquality/dashboard.dart';
import 'package:airquality/Splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'firebase_options.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  final Future<FirebaseApp> _firebaseApp =Firebase.initializeApp();

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Splash(),
    );
  }
}
