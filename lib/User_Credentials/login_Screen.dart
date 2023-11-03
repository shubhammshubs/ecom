import 'package:ecom/User_Credentials/Forgot_Password_OTP_Screen.dart';
import 'package:ecom/User_Credentials/Signup_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Forgot_Pass_Email_Verification.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( "Sign In",
            style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            ),
            SizedBox(height: 10,),
            Text( "Hi! Welcome back, you've been missed",
              style: TextStyle(color: Colors.black45,
                  // fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value){

                },
                validator: (value){
                  return value!.isEmpty ? 'Please  Enter Email' : null;
                },
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value){

                },
                validator: (value){
                  return value!.isEmpty ? 'Please  Enter Password' : null;
                },
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 220,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                            ForgotPassEmailVerify()));
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      decoration: TextDecoration.underline, // Add underline decoration here
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: MaterialButton(

                  minWidth: double.infinity,
                  onPressed:() {},
                  child: Text('Sign In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),),

                  color: Colors.green,
                  textColor: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 40,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black45 , // Color of the lines
                      thickness: 1, // Thickness of the lines
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Sign In with',
                      style: TextStyle(
                        color: Colors.black45,
                        // backgroundColor: Colors.teal,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black45, // Color of the lines
                      thickness: 1, // Thickness of the lines
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [Colors.red,Colors.yellow,Colors.green, Colors.blue], // Define the colors you want to mix
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                      ).createShader(bounds);
                    },
                    child: Icon(
                      FontAwesomeIcons.google,
                      size: 34,
                      color: Colors.white, // Set the default color of the icon
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Icon(
                    Icons.apple, // Replace with the appropriate Google icon
                    color: Colors.black, // Change the color to match the Google icon
                    size: 38,
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Icon(
                    FontAwesomeIcons.facebookF, // Replace with the appropriate Facebook icon
                    color: Colors.blue, // Change the color to match the Facebook icon
                    size: 34,
                  ),
                ),
                SizedBox(width: 10),

                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Icon(
                    FontAwesomeIcons.mobileScreen, // Replace with the appropriate Facebook icon
                    color: Colors.black, // Change the color to match the Facebook icon
                    size: 34,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            // Don't have an account? Sign Up.
            Text(
              "Don't have an account? ",
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                SignUpScreen()));
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.green,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),


          ],
        ),

      ),

    );
  }
}
