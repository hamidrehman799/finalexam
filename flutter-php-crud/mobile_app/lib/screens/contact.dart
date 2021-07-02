import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'Hamid Rehman',
          textColor: Colors.white,
          backgroundColor: Colors.teal.shade300,
          email: 'hamidrehman799@gmail.com',
          // textFont: 'Sail',
        ),
        backgroundColor: Colors.teal,
        body: ContactUs(
            cardColor: Colors.white,
            textColor: Colors.teal.shade900,
            logo: AssetImage('images/profile.jpg'),
            email: 'hamidrehman799@gmail.com',
            companyName: 'hamid Rehman',
            companyColor: Colors.teal.shade100,
            phoneNumber: '+923166250651',
            website: 'none',
            githubUserName: 'hamidrehman799',
            linkedinURL:
            'none',
            tagLine: 'Flutter Developer',
            taglineColor: Colors.teal.shade100,
            twitterHandle: 'none',
            instagram: 'none',
            facebookHandle: 'none'),
      ),
    );
  }
}