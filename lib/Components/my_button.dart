// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_project1/login_page.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      
      child: Center(
        child: ElevatedButton(
          child: Text('Sign In'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
            );
          },
          style: ButtonStyle(
          
          minimumSize: MaterialStateProperty.all<Size>(
            Size(250, 60),
        ),
      ),
        )
      )
    );
  }
}


class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
        child: ElevatedButton(
          child: Text('SignOut'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),

);
}
}
