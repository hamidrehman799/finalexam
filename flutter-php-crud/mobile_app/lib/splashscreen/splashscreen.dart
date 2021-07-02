import 'package:flutter/material.dart';
import 'package:flutter_php/screens/create.dart';
import 'package:flutter_php/screens/details.dart';
import 'package:flutter_php/screens/edit.dart';
import 'package:flutter_php/screens/home.dart';





class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CRUD APP',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/create': (context) => Create(),
        '/details': (context) => Details(),
        '/edit': (context) => Edit(),
      },
    );
  }
}
