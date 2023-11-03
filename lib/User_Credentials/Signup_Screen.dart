import 'package:ecom/User_Credentials/login_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool agreedToTerms = false; // Track whether the user has agreed to the Terms & Conditions.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70,),
              const Text( "Create Account",
                style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Fill your information below or register",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the Sign Up screen
                      // You can use Navigator to navigate to the sign-up screen.
                    },
                    child: const Text(
                      "with your account.",
                      style: TextStyle(
                        color: Colors.black45,
                        // fontWeight: FontWeight.bold,
                        // decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    prefixIcon: Icon(Icons.drive_file_rename_outline),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String value){

                  },
                  validator: (value){
                    return value!.isEmpty ? 'Please  Enter Email' : null;
                  },
                ),
              ),
              const SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
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
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
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
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: agreedToTerms,
                    onChanged: (bool? value) {
                      setState(() {
                        agreedToTerms = value ?? false;
                      });
                    },
                  ),
                  const Text(
                    "Agree with ",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the Sign Up screen
                      // You can use Navigator to navigate to the sign-up screen.
                    },
                    child: const Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: MaterialButton(

                    minWidth: double.infinity,
                    onPressed:() {},
                    child: const Text('Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),),

                    color: Colors.green,
                    textColor: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 30,),
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
                        'Or Sign up with',
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
              const SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          colors: [Colors.red,Colors.yellow,Colors.green, Colors.blue], // Define the colors you want to mix
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      child: const Icon(
                        FontAwesomeIcons.google,
                        size: 34,
                        color: Colors.white, // Set the default color of the icon
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: Icon(
                      Icons.apple, // Replace with the appropriate Google icon
                      color: Colors.black, // Change the color to match the Google icon
                      size: 38,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: Icon(
                      FontAwesomeIcons.facebookF, // Replace with the appropriate Facebook icon
                      color: Colors.blue, // Change the color to match the Facebook icon
                      size: 34,
                    ),
                  ),
                  const SizedBox(width: 10),

                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35 ,
                    child: Icon(
                      FontAwesomeIcons.mobileScreen, // Replace with the appropriate Facebook icon
                      color: Colors.black, // Change the color to match the Facebook icon
                      size: 34,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25,),
              // Don't have an account? Sign Up.
              const Text(
                "Don't have an account? ",
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                          LoginScreen()));
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     GestureDetector(
              //       onTap: () {
              //         // Add your logic for handling "Forgot Password?" button click here
              //       },
              //       child: const Text(
              //         "Sign Up",
              //         style: TextStyle(
              //           color: Colors.green,
              //           fontSize: 14,
              //           decoration: TextDecoration.underline, // Add underline decoration here
              //         ),
              //       ),
              //     ),
              //   ],
              // )

            ],
          ),

        ),
      ),

    );
  }
}
