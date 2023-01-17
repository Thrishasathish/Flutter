import 'package:bems/Login.dart';
import 'package:bems/NavBar.dart';

import 'package:bems/forgotpsd.dart';


import 'package:bems/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:LoginScreens(),
    );
  }
}
