import 'package:dhingra_textiles/pages/auth/input_number_screen.dart';
import 'package:dhingra_textiles/pages/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          // '/': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
          '/': (context) => SplashScreen(),
          InputNumberScreen.routeName: (context) => InputNumberScreen(),
        });
  }
}
