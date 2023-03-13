// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'Components/my_textfiled.dart';
import 'Components/my_button.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.lock,
              size: 130,
            ),
            SizedBox(
              height: 20,
            ),
            // hello
            Text(
              'Hello again!',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),

            // email textfiled

            MyTextFiled(
              controller: emailcontroller,
              hintText: 'Email',
              obscureText: false,
            ),

            SizedBox(
              height: 10,
            ),

            //password text filed

            MyTextFiled(
              controller: passwordcontroller,
              hintText: 'Password',
              obscureText: true,
            ),

            SizedBox(
              height: 10,
            ),

            //sign in button

            MyButton(
              
            ),

            SizedBox(
              height: 10,
            ),

            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text(
                  'not a member? ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  ),
                   onPressed: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>Register_Page()));
                   },
                ),
          ],),

                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                
                TextButton(
                  child: Text(
                    '  Change Password',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
                  ),
                   onPressed: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>ChangePassword_Page()));
                   },
                ),
              ],
            ),
          
        ],),
        
      ),
      ),
    );
    
}
}
class Register_Page extends StatelessWidget {
  const Register_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text('Register Now')) ,
    );
  }
}
class ChangePassword_Page extends StatelessWidget {
  const ChangePassword_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text('Change Password')) ,
    );
  }
}