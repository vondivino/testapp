import 'package:flutter/material.dart';
import 'package:ivolunteer/screens/home.dart';
import 'package:ivolunteer/screens/detail.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iVolunteer App',
      routes: {
        '/': (context) => Home(),
        '/detail': (context) => Detail(),
      },
    );
  }
}
