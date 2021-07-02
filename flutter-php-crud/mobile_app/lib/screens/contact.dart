import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';

class contact extends StatelessWidget {
  const contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: ContactUs(
          logo: AssetImage('images/profile.jpg'),
          email: 'hamidrehman799@gmail.com',
          phoneNumber: '+923166250651',
          website: 'none',
          githubUserName: 'hamidrehman799',
        ),
      ),
    );
  }
}

