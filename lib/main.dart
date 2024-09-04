import 'package:flutter/material.dart';
import 'package:service_centre_near_me/ui/screens/loginscreen/loginscreen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginscreenView(),
    );
  }
}
